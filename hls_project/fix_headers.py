"""
Fix các lỗi header do Py2C generate:
1. Tạo common.h — định nghĩa fxp MỘT lần duy nhất
2. Xóa typedef trùng + include trùng trong tất cả .h và .cpp
3. Thêm include guard vào tất cả .h
4. Thêm #include "common.h" vào đầu mỗi file

Chạy từ thư mục hls_project/:
    python fix_headers.py
"""
import os, re

DST = os.path.join(os.path.dirname(os.path.abspath(__file__)), "pipeline")

# ===== 1. Tạo common.h =====
common_h = os.path.join(DST, "common.h")
with open(common_h, "w") as f:
    f.write(
        "#ifndef COMMON_H\n"
        "#define COMMON_H\n"
        "#include <ap_fixed.h>\n"
        "#include <ap_axi_sdata.h>\n"
        "#include <cmath>\n"
        "#include <algorithm>\n"
        "#include <string.h>\n"
        "typedef ap_fixed<16,8> fxp;\n"
        "#endif // COMMON_H\n"
    )
print("Created common.h")

# ===== 2. Các pattern cần xóa khỏi mọi file =====
REMOVE_LINES = [
    r'^\s*#include\s*<ap_axi_sdata\.h>\s*$',
    r'^\s*#include\s*<ap_fixed\.h>\s*$',
    r'^\s*#include\s*<cmath>\s*$',
    r'^\s*#include\s*<algorithm>\s*$',
    r'^\s*#include\s*<string\.h>\s*$',
    r'^\s*typedef\s+ap_fixed\s*<\s*16\s*,\s*8\s*>\s+fxp\s*;\s*$',
]
REMOVE_RE = [re.compile(p) for p in REMOVE_LINES]

def clean_content(text):
    lines = text.splitlines(keepends=True)
    cleaned = [l for l in lines if not any(r.match(l) for r in REMOVE_RE)]
    return "".join(cleaned)

# ===== 3. Xử lý từng file .h =====
h_files = [f for f in os.listdir(DST) if f.endswith(".h") and f != "common.h"]
for fname in sorted(h_files):
    path = os.path.join(DST, fname)
    with open(path, "r") as f:
        content = f.read()

    content = clean_content(content)

    guard = fname.upper().replace(".", "_")
    # Thêm include guard + include common.h
    new_content = (
        f"#ifndef {guard}\n"
        f"#define {guard}\n"
        f'#include "common.h"\n\n'
        + content.strip() + "\n\n"
        f"#endif // {guard}\n"
    )
    with open(path, "w") as f:
        f.write(new_content)
    print(f"Fixed .h : {fname}")

# ===== 4. Xử lý từng file .cpp =====
cpp_files = [f for f in os.listdir(DST) if f.endswith(".cpp")]
for fname in sorted(cpp_files):
    path = os.path.join(DST, fname)
    with open(path, "r") as f:
        content = f.read()

    content = clean_content(content)

    # Thêm #include "common.h" ở đầu nếu chưa có
    if '"common.h"' not in content:
        content = '#include "common.h"\n' + content

    with open(path, "w") as f:
        f.write(content)
    print(f"Fixed .cpp: {fname}")

print("\nDone! Tất cả file đã được fix.")
