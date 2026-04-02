"""
Tạo báo cáo PDF cho Bước 1 - Python Baseline
"""
import json
import os
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.backends.backend_pdf import PdfPages
import numpy as np

# Font hỗ trợ tiếng Việt
plt.rcParams['font.family'] = 'DejaVu Sans'
plt.rcParams['font.sans-serif'] = ['DejaVu Sans']

RESULT_DIR = "results_step1"
OUTPUT_PDF = "BaoCao_Buoc1_Python_Baseline.pdf"

# Load data
with open(os.path.join(RESULT_DIR, "metrics.json")) as f:
    metrics = json.load(f)
with open(os.path.join(RESULT_DIR, "history.json")) as f:
    history = json.load(f)

with PdfPages(OUTPUT_PDF) as pdf:

    # ===================== TRANG 1: TỔNG QUAN =====================
    fig = plt.figure(figsize=(8.27, 11.69))  # A4
    fig.patch.set_facecolor('white')
    ax = fig.add_axes([0, 0, 1, 1])
    ax.axis('off')

    title_text = """ĐỒ ÁN 1 - BÁO CÁO TIẾN ĐỘ BƯỚC 1

THIẾT KẾ BỘ AUTOENCODER KHỬ NHIỄU ẢNH TRÊN FPGA
Hardware Acceleration of Denoising Autoencoder
and Handwritten Digit Recognition on FPGA
"""
    ax.text(0.5, 0.88, title_text, ha='center', va='top', fontsize=14,
            fontweight='bold', family='DejaVu Sans Mono', linespacing=1.8)

    info = """─────────────────────────────────────────
  Platform mục tiêu:   Xilinx KV260
  Công cụ:             Vitis HLS, Vivado, PyTorch
  Dataset:             MNIST (60K train / 10K test)
  Kiến trúc:           Lightweight Denoising Autoencoder
  Tổng tham số:        665
─────────────────────────────────────────"""
    ax.text(0.5, 0.62, info, ha='center', va='top', fontsize=11,
            family='DejaVu Sans Mono', linespacing=1.6)

    roadmap = """LỘ TRÌNH THỰC HIỆN (7 GIAI ĐOẠN)

  [■] Bước 1: Python Baseline             ← ĐANG BÁO CÁO
  [ ] Bước 2: Chứng minh hiệu quả (Classifier)
  [ ] Bước 3: Đóng băng mô hình, xuất weights
  [ ] Bước 4: Viết inference C/C++
  [ ] Bước 5: Quantization (float → fixed-point)
  [ ] Bước 6: HLS + tối ưu (pragma, cosim, synthesis)
  [ ] Bước 7: Tích hợp hệ thống SoC, demo end-to-end"""
    ax.text(0.5, 0.40, roadmap, ha='center', va='top', fontsize=11,
            family='DejaVu Sans Mono', linespacing=1.6)

    ax.text(0.5, 0.08, f"Ngày tạo: {metrics['timestamp']}", ha='center',
            fontsize=10, family='DejaVu Sans Mono', color='gray')

    pdf.savefig(fig)
    plt.close()

    # ===================== TRANG 2: KIẾN TRÚC MODEL =====================
    fig = plt.figure(figsize=(8.27, 11.69))
    fig.patch.set_facecolor('white')
    ax = fig.add_axes([0, 0, 1, 1])
    ax.axis('off')

    ax.text(0.5, 0.95, "1. KIẾN TRÚC DENOISING AUTOENCODER",
            ha='center', fontsize=14, fontweight='bold', family='DejaVu Sans Mono')

    arch_text = """Kiến trúc mô hình:

  Input (28×28×1)
    │
    ├── Conv2d(1→4, 3×3, pad=1)    # 28×28×4,  weights: 4×1×3×3+4 = 40
    ├── ReLU
    ├── MaxPool2d(2×2)              # 14×14×4
    │
    ├── Conv2d(4→8, 3×3, pad=1)    # 14×14×8,  weights: 8×4×3×3+8 = 296
    ├── ReLU
    │
    ├── Upsample(×2, nearest)       # 28×28×8   (không có weights)
    │
    ├── Conv2d(8→4, 3×3, pad=1)    # 28×28×4,  weights: 4×8×3×3+4 = 292
    ├── ReLU
    │
    ├── Conv2d(4→1, 3×3, pad=1)    # 28×28×1,  weights: 1×4×3×3+1 = 37
    └── Sigmoid
    │
  Output (28×28×1)


  Tổng tham số: 40 + 296 + 292 + 37 = 665"""
    ax.text(0.08, 0.88, arch_text, ha='left', va='top', fontsize=10,
            family='DejaVu Sans Mono', linespacing=1.5)

    why_text = """Lý do chọn kiến trúc này:

  • Ít kênh (4→8→4→1): giảm tài nguyên LUT/DSP khi triển khai FPGA
  • Chỉ dùng Conv, ReLU, MaxPool, Upsample, Sigmoid:
    tất cả đều dễ viết lại bằng C/HLS
  • 665 tham số: đủ nhỏ để lưu trọn trong BRAM của KV260
  • MaxPool+Upsample thay vì stride conv: đơn giản hóa phần cứng
  • Sigmoid ở cuối: đảm bảo output trong [0, 1] (giá trị pixel hợp lệ)"""
    ax.text(0.08, 0.28, why_text, ha='left', va='top', fontsize=10,
            family='DejaVu Sans Mono', linespacing=1.5)

    pdf.savefig(fig)
    plt.close()

    # ===================== TRANG 3: CẤU HÌNH TRAINING =====================
    fig = plt.figure(figsize=(8.27, 11.69))
    fig.patch.set_facecolor('white')
    ax = fig.add_axes([0, 0, 1, 1])
    ax.axis('off')

    ax.text(0.5, 0.95, "2. CẤU HÌNH TRAINING & DỮ LIỆU",
            ha='center', fontsize=14, fontweight='bold', family='DejaVu Sans Mono')

    data_text = """Dữ liệu: MNIST

  • Tập train: 60,000 ảnh chữ số viết tay (28×28 grayscale)
  • Tập test:  10,000 ảnh
  • Giá trị pixel: chuẩn hóa về [0, 1]
  • Nguồn: torchvision.datasets.MNIST (dataset chuẩn quốc tế)


Tạo nhiễu:

  • Loại nhiễu: Additive Gaussian Noise
  • Công thức: noisy = clamp(clean + N(0, σ²), 0, 1)
  • σ (noise_std) = 0.5  →  nhiễu khá mạnh, thử thách cho model nhẹ
  • Mỗi epoch tạo nhiễu ngẫu nhiên khác nhau → model học tổng quát hơn


Cấu hình training:

  ┌─────────────────────┬──────────────┐
  │ Tham số             │ Giá trị      │
  ├─────────────────────┼──────────────┤
  │ Framework           │ PyTorch      │
  │ Optimizer           │ Adam         │
  │ Learning rate       │ 0.001        │
  │ Loss function       │ MSE Loss     │
  │ Batch size          │ 128          │
  │ Epochs              │ 50           │
  │ Device              │ CPU          │
  │ Tổng tham số model  │ 665          │
  └─────────────────────┴──────────────┘


Lý do chọn MSE Loss:

  • Phù hợp cho bài toán regression pixel (khử nhiễu)
  • Trực tiếp tối ưu chất lượng ảnh
  • Liên hệ trực tiếp với PSNR: PSNR = 10·log10(1/MSE)"""
    ax.text(0.08, 0.88, data_text, ha='left', va='top', fontsize=10,
            family='DejaVu Sans Mono', linespacing=1.4)

    pdf.savefig(fig)
    plt.close()

    # ===================== TRANG 4: KẾT QUẢ SỐ LIỆU =====================
    fig = plt.figure(figsize=(8.27, 11.69))
    fig.patch.set_facecolor('white')
    ax = fig.add_axes([0, 0, 1, 1])
    ax.axis('off')

    ax.text(0.5, 0.95, "3. KẾT QUẢ ĐÁNH GIÁ (trên 10,000 ảnh test)",
            ha='center', fontsize=14, fontweight='bold', family='DejaVu Sans Mono')

    result_text = f"""Bảng so sánh chất lượng ảnh:

  ┌─────────────────┬────────────┬────────────┬────────────┐
  │                 │ Ảnh nhiễu  │ Ảnh khử    │ Cải thiện  │
  │                 │ (input)    │ nhiễu      │            │
  ├─────────────────┼────────────┼────────────┼────────────┤
  │ MSE             │ {metrics['mse_noisy']:.6f}   │ {metrics['mse_denoised']:.6f}  │ giảm 8.9x  │
  │ PSNR (dB)       │ {metrics['psnr_noisy_db']:.2f}      │ {metrics['psnr_denoised_db']:.2f}     │ +{metrics['psnr_improvement_db']:.2f} dB  │
  └─────────────────┴────────────┴────────────┴────────────┘


Ý nghĩa các chỉ số:

  • MSE (Mean Squared Error): sai số bình phương trung bình giữa
    ảnh gốc và ảnh đầu ra. Càng thấp càng tốt.

  • PSNR (Peak Signal-to-Noise Ratio): tỉ lệ tín hiệu trên nhiễu.
    Càng cao càng tốt. Công thức: PSNR = 10·log10(1/MSE)
    - < 10 dB: rất nhiễu, khó nhận dạng
    - 15-20 dB: chất lượng chấp nhận được
    - > 20 dB: chất lượng tốt


Nhận xét:

  • PSNR tăng từ 9.38 → 19.19 dB (+9.81 dB): cải thiện rất đáng kể
  • MSE giảm gần 9 lần so với ảnh nhiễu đầu vào
  • Model chỉ 665 tham số nhưng khử nhiễu hiệu quả
  • Loss hội tụ ổn định, train ≈ val → không overfit
  • Model bão hòa từ epoch ~30, đạt giới hạn kiến trúc

Kết quả training:

  • Train Loss cuối: {metrics['final_train_loss']:.6f}
  • Val Loss cuối:   {metrics['final_val_loss']:.6f}
  • Chênh lệch:      {abs(metrics['final_train_loss'] - metrics['final_val_loss']):.6f} (rất nhỏ → không overfit)"""

    ax.text(0.08, 0.88, result_text, ha='left', va='top', fontsize=10,
            family='DejaVu Sans Mono', linespacing=1.4)

    pdf.savefig(fig)
    plt.close()

    # ===================== TRANG 5: BIỂU ĐỒ TRAINING =====================
    fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(8.27, 11.69))
    fig.patch.set_facecolor('white')

    fig.suptitle("4. BIỂU ĐỒ TRAINING", fontsize=14, fontweight='bold',
                 family='DejaVu Sans Mono', y=0.96)

    # Loss curve
    ax1.plot(history["epoch"], history["train_loss"], 'b-', linewidth=2, label="Train Loss")
    ax1.plot(history["epoch"], history["val_loss"], 'r-', linewidth=2, label="Val Loss")
    ax1.set_xlabel("Epoch", fontsize=12)
    ax1.set_ylabel("MSE Loss", fontsize=12)
    ax1.set_title("Loss theo Epoch", fontsize=13)
    ax1.legend(fontsize=11)
    ax1.grid(True, alpha=0.3)

    # PSNR curve
    ax2.plot(history["epoch"], history["val_psnr"], 'g-', linewidth=2, label="Val PSNR")
    ax2.set_xlabel("Epoch", fontsize=12)
    ax2.set_ylabel("PSNR (dB)", fontsize=12)
    ax2.set_title("PSNR theo Epoch", fontsize=13)
    ax2.legend(fontsize=11)
    ax2.grid(True, alpha=0.3)
    ax2.axhline(y=metrics['psnr_denoised_db'], color='r', linestyle='--', alpha=0.5,
                label=f"Final: {metrics['psnr_denoised_db']:.2f} dB")
    ax2.legend(fontsize=11)

    plt.tight_layout(rect=[0, 0, 1, 0.94])
    pdf.savefig(fig)
    plt.close()

    # ===================== TRANG 6: ẢNH SO SÁNH =====================
    fig = plt.figure(figsize=(8.27, 11.69))
    fig.patch.set_facecolor('white')

    fig.suptitle("5. ẢNH SO SÁNH: GỐC / NHIỄU / KHỬ NHIỄU",
                 fontsize=14, fontweight='bold', family='DejaVu Sans Mono', y=0.96)

    # Load comparison image
    comp_img = plt.imread(os.path.join(RESULT_DIR, "comparison.png"))
    ax = fig.add_axes([0.05, 0.45, 0.9, 0.45])
    ax.imshow(comp_img)
    ax.axis('off')
    ax.set_title("10 mẫu đại diện từ tập test (10,000 ảnh)", fontsize=11)

    # Annotation
    ax2 = fig.add_axes([0, 0.05, 1, 0.35])
    ax2.axis('off')
    note = f"""Giải thích:

  • Hàng 1 (Ảnh gốc):     ảnh MNIST sạch, chưa thêm nhiễu
  • Hàng 2 (Ảnh nhiễu):   sau khi thêm Gaussian noise σ=0.5
  • Hàng 3 (Khử nhiễu):   đầu ra của model autoencoder

  Nhận xét trực quan:
  • Ảnh khử nhiễu khôi phục rõ nét chữ số, loại bỏ phần lớn nhiễu
  • Một số chi tiết mảnh bị mờ nhẹ (do model nhỏ 665 params)
  • Đủ rõ để nhận dạng đúng chữ số → cơ sở cho bước 2 (classifier)

  Lưu ý: Số liệu MSE/PSNR được tính trên TOÀN BỘ 10,000 ảnh test,
  không chỉ 10 mẫu hiển thị ở trên."""
    ax2.text(0.08, 0.95, note, ha='left', va='top', fontsize=10,
             family='DejaVu Sans Mono', linespacing=1.5)

    pdf.savefig(fig)
    plt.close()

    # ===================== TRANG 7: KẾ HOẠCH TIẾP THEO =====================
    fig = plt.figure(figsize=(8.27, 11.69))
    fig.patch.set_facecolor('white')
    ax = fig.add_axes([0, 0, 1, 1])
    ax.axis('off')

    ax.text(0.5, 0.95, "6. KẾ HOẠCH TIẾP THEO",
            ha='center', fontsize=14, fontweight='bold', family='DejaVu Sans Mono')

    next_text = """Bước 2: Chứng minh hiệu quả bằng Classifier

  • Train CNN nhận dạng chữ số 0-9 (LeNet nhẹ) trên ảnh sạch
  • Đo accuracy trên 3 loại ảnh:
    - Ảnh sạch (baseline)
    - Ảnh nhiễu (cho thấy nhiễu ảnh hưởng nhận dạng)
    - Ảnh đã khử nhiễu (cho thấy denoiser giúp cải thiện)
  • Kết quả kỳ vọng: accuracy(denoised) >> accuracy(noisy)


Bước 3-5: Chuyển sang phần cứng

  • Đóng băng kiến trúc, xuất weights → mảng C
  • Viết lại inference bằng C/C++ thuần (conv, relu, pool, upsample)
  • Chuyển float → fixed-point Q16, kiểm tra sai số


Bước 6-7: HLS & Tích hợp

  • Tạo IP bằng Vitis HLS với pragma tối ưu
  • Ghép vào SoC trên KV260, demo end-to-end


Kết luận Bước 1:

  ✓ Kiến trúc denoiser nhẹ (665 params) đã được xác nhận hiệu quả
  ✓ PSNR cải thiện +9.81 dB trên tập test 10,000 ảnh
  ✓ Model không overfit, hội tụ ổn định
  ✓ Sẵn sàng chuyển sang bước 2 (classifier) và bước 3 (export)"""
    ax.text(0.08, 0.88, next_text, ha='left', va='top', fontsize=11,
            family='DejaVu Sans Mono', linespacing=1.5)

    pdf.savefig(fig)
    plt.close()

print(f"Đã tạo báo cáo: {OUTPUT_PDF}")
