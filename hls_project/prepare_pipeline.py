"""
Rename và copy files denoiser/ + classifier/ vào pipeline/
Thêm prefix D_ cho denoiser, C_ cho classifier để tránh xung đột tên hàm.

Chạy từ thư mục hls_project/:
    python prepare_pipeline.py
"""

import os
import shutil
import re

# ===== Cấu hình =====
BASE = os.path.dirname(os.path.abspath(__file__))
SRC_D = os.path.join(BASE, "denoiser")
SRC_C = os.path.join(BASE, "classifer")   # giữ đúng tên folder bạn đã tạo
DST   = os.path.join(BASE, "pipeline")

os.makedirs(DST, exist_ok=True)

# ===== Danh sách hàm cần rename =====
DENOISER_FUNCS = [
    "Padding_Conv2D_0", "Padding_Conv2D_1", "Padding_Conv2D_2", "Padding_Conv2D_3",
    "Conv2D_0", "Conv2D_1", "Conv2D_2", "Conv2D_3",
    "Max_Pool2D_0", "UpSampling2D_0",
    "CNN",
]

CLASSIFIER_FUNCS = [
    "Conv2D_0", "Conv2D_1",
    "Max_Pool2D_0", "Max_Pool2D_1",
    "flatten0",
    "Dense_0", "Dense_1", "Dense_2",
    "CNN",
]

def rename_funcs(text, func_list, prefix):
    """Thêm prefix vào tên hàm, tránh rename trùng."""
    # Sắp xếp từ dài nhất → ngắn nhất để tránh partial match
    for func in sorted(func_list, key=len, reverse=True):
        # Chỉ replace khi là word boundary (không phải một phần từ khác)
        text = re.sub(r'\b' + re.escape(func) + r'\b', prefix + func, text)
    return text

def copy_and_rename(src_dir, dst_prefix, func_list, files):
    """Copy các file từ src_dir vào pipeline/, rename hàm."""
    for fname in files:
        src_path = os.path.join(src_dir, fname)
        if not os.path.exists(src_path):
            print(f"  [SKIP] {fname} không tồn tại")
            continue
        # Tên file mới: thêm prefix (Conv.cpp → D_Conv.cpp)
        dst_fname = dst_prefix + fname
        dst_path  = os.path.join(DST, dst_fname)
        with open(src_path, "r", encoding="utf-8") as f:
            content = f.read()
        content = rename_funcs(content, func_list, dst_prefix)
        # Sửa #include để trỏ đúng file đã rename
        for orig_file in files:
            content = content.replace(f'"{orig_file}"', f'"{dst_prefix + orig_file}"')
        with open(dst_path, "w", encoding="utf-8") as f:
            f.write(content)
        print(f"  OK  {fname} → {dst_fname}")

print("=== Copy denoiser → pipeline/ (prefix D_) ===")
copy_and_rename(SRC_D, "D_", DENOISER_FUNCS,
    ["CNN.h", "CNN.cpp", "Conv.h", "Conv.cpp", "Pool.h", "Pool.cpp"])

print("\n=== Copy classifier → pipeline/ (prefix C_) ===")
copy_and_rename(SRC_C, "C_", CLASSIFIER_FUNCS,
    ["CNN.h", "CNN.cpp", "Conv.h", "Conv.cpp", "Pool.h", "Pool.cpp",
     "Dense.h", "Dense.cpp"])

# Copy Float_Weights.txt riêng
for label, src_dir in [("denoiser", SRC_D), ("classifier", SRC_C)]:
    src = os.path.join(src_dir, "Float_Weights.txt")
    dst = os.path.join(DST, f"Weights_{label}.txt")
    if os.path.exists(src):
        shutil.copy2(src, dst)
        print(f"\n  Copied Float_Weights.txt → Weights_{label}.txt")

print("\nDone! Kiểm tra thư mục pipeline/")
