# Đồ Án 1 — Tăng Tốc Phần Cứng Autoencoder Khử Nhiễu Ảnh Trên FPGA

**Hardware Acceleration of Denoising Autoencoder and Handwritten Digit Recognition on FPGA**

> Trường: ĐH Công Nghệ Thông Tin — UIT  
> GVHD: TS. Phạm Hoài Luân  
> Bùi Tấn Đạt — 23520244  
> Lương Ngọc Đại — 23520215  

---

## Mục tiêu

Thiết kế và triển khai pipeline hai giai đoạn trên FPGA (KV260):

```
Ảnh nhiễu (28x28)
    ↓  [Denoiser — 665 params]
Ảnh sạch (28x28)
    ↓  [Classifier — 37,106 params]
Chữ số (0–9)
```

---

## Kiến trúc mô hình

### Denoiser (Autoencoder khử nhiễu)

| Layer | Input → Output | Params |
|-------|----------------|--------|
| Conv2d(1→4, k3, pad1) + ReLU | 28×28×1 → 28×28×4 | 40 |
| MaxPool2d(2) | 28×28×4 → 14×14×4 | 0 |
| Conv2d(4→8, k3, pad1) + ReLU | 14×14×4 → 14×14×8 | 296 |
| Upsample(×2, nearest) | 14×14×8 → 28×28×8 | 0 |
| Conv2d(8→4, k3, pad1) + ReLU | 28×28×8 → 28×28×4 | 292 |
| Conv2d(4→1, k3, pad1) + Sigmoid | 28×28×4 → 28×28×1 | 37 |
| **Tổng** | | **665** |

### Classifier (LeNet nhẹ)

| Layer | Input → Output | Params |
|-------|----------------|--------|
| Conv2d(1→6, k5, pad2) + ReLU | 28×28×1 → 28×28×6 | 156 |
| MaxPool2d(2) | 28×28×6 → 14×14×6 | 0 |
| Conv2d(6→16, k5) + ReLU | 14×14×6 → 10×10×16 | 2,416 |
| MaxPool2d(2) | 10×10×16 → 5×5×16 | 0 |
| Flatten → FC(400→84) + ReLU | 400 → 84 | 33,684 |
| FC(84→10) | 84 → 10 | 850 |
| **Tổng** | | **37,106** |

---

## Lộ trình thực hiện

### Bước 1 — Python Baseline (Denoiser) `XONG`

Train denoiser trên MNIST với nhiễu Gaussian σ=0.5.

```bash
python train_denoiser.py
```

Kết quả (`results_step1/metrics.json`):

| Chỉ số | Giá trị |
|--------|---------|
| PSNR ảnh nhiễu | 9.38 dB |
| PSNR ảnh khử nhiễu | 19.19 dB |
| Cải thiện | **+9.81 dB** |
| MSE ảnh nhiễu | 0.1156 |
| MSE ảnh khử nhiễu | 0.0129 |

### Bước 2 — Chứng minh hiệu quả Denoiser `XONG`

Train classifier, đánh giá trên 3 kịch bản: ảnh sạch / nhiễu / khử nhiễu.

```bash
python train_classifier.py
```

Kết quả (`results_step2/metrics.json`):

| Kịch bản | Accuracy |
|----------|----------|
| Ảnh sạch (baseline) | 99.11% |
| Ảnh nhiễu (σ=0.5) | 88.90% |
| Ảnh khử nhiễu | **96.30%** |
| Cải thiện | **+7.40%** |

### Bước 3 — Xuất Weights sang C Header `TODO`

Viết script Python đọc `.pth` → xuất mảng float[] ra file `.h`.

- `weights_denoiser.h` — conv1/conv2/conv3/conv4 weights + bias
- `weights_classifier.h` — conv1/conv2/fc1/fc2 weights + bias

### Bước 4 — C++ Inference Pipeline `TODO`

Viết inference C++ thuần cho cả pipeline denoiser → classifier.

- Không dùng framework, chỉ dùng mảng tĩnh
- Test trên PC, so sánh output với PyTorch

### Bước 5 — Quantization Fixed-Point `TODO`

Chuyển từ `float` sang `ap_fixed<16,8>` (Vitis HLS).

- Kiểm tra accuracy loss sau quantization
- Điều chỉnh số bit nếu cần

### Bước 6 — Vitis HLS `TODO`

Tổng hợp pipeline thành IP Core.

- C-Simulation: kiểm tra đúng logic
- Pragmas: `PIPELINE`, `UNROLL`, `INLINE`
- Synthesis Report: BRAM, DSP, LUT, FF, Latency
- Co-Simulation: xác nhận RTL đúng

### Bước 7 — Tích hợp SoC trên KV260 `TODO`

Ghép IP vào Vivado Block Design, viết phần mềm PS.

- Interface: AXI4-Lite (control) + AXI4 Master (data)
- PS software: nạp ảnh → chạy IP → đọc kết quả
- Demo end-to-end: ảnh nhiễu in → số nhận dạng ra

---

## Cấu trúc thư mục

```
DoAn1/
├── train_denoiser.py              # Bước 1: train denoiser
├── train_classifier.py            # Bước 2: train classifier
├── generate_report.py             # Tạo báo cáo PDF bước 1
├── results_step1/
│   ├── denoiser.pth               # Weights denoiser (PyTorch)
│   ├── metrics.json               # PSNR, MSE
│   ├── comparison.png             # Ảnh gốc / nhiễu / khử nhiễu
│   └── training_curves.png        # Loss & PSNR theo epoch
├── results_step2/
│   ├── classifier.pth             # Weights classifier (PyTorch)
│   ├── metrics.json               # Accuracy 3 kịch bản
│   ├── accuracy_comparison.png    # Biểu đồ so sánh
│   └── prediction_comparison.png  # Ảnh + nhãn dự đoán
├── papers/                        # Tài liệu tham khảo
└── data/                          # MNIST dataset (auto-download)
```

---

## Môi trường

| Công cụ | Phiên bản |
|---------|----------|
| Python | 3.13 |
| PyTorch | latest |
| Vitis HLS | 2022.2 |
| Vivado | 2022.2 |
| FPGA Board | AMD KV260 (Zynq UltraScale+) |

---

## Tài liệu tham khảo

Xem thư mục `papers/` — bao gồm các bài báo về:
- Denoising Autoencoders (Vincent 2008, 2010)
- Convolutional Autoencoder trên MNIST (Mascharka 2017)
- FPGA Autoencoder (Soltani 2023)
- Fixed-Point Quantization cho CNN (Goyal 2021, Marquez 2024)
- FINN: BNN trên FPGA (Umuroglu 2016)
