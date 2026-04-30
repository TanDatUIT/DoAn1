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
python train_denoiser_keras.py
```

Kết quả (`results_step1_keras/`):

| Chỉ số | Giá trị |
|--------|---------|
| PSNR ảnh nhiễu | ~9 dB |
| PSNR ảnh khử nhiễu | **18.89 dB** |
| MSE ảnh khử nhiễu | 0.012925 |
| Model | `results_step1_keras/denoiser.h5` (Keras/TF) |

### Bước 2 — Chứng minh hiệu quả Denoiser `XONG`

Train classifier, đánh giá trên 3 kịch bản: ảnh sạch / nhiễu / khử nhiễu.

```bash
python train_classifier_keras.py
```

Kết quả (`results_step2_keras/`):

| Kịch bản | Accuracy |
|----------|----------|
| Ảnh sạch (baseline) | **96.80%** |
| Ảnh nhiễu (σ=0.5) | 95.29% |
| Model | `results_step2_keras/classifier_fpga.h5` (Keras/TF) |

### Bước 3 — Xuất Weights sang C Header `TODO`

Viết script Python đọc `.h5` → xuất mảng float[] ra file `.h`.

- `weights_denoiser.h` — conv1/conv2/conv3/conv4 weights + bias
- `weights_classifier.h` — conv1/conv2/fc1/fc2 weights + bias

### Bước 4 — C++ Inference Pipeline `TODO`

Viết inference C++ thuần cho cả pipeline denoiser → classifier.

- Không dùng framework, chỉ dùng mảng tĩnh
- Test trên PC, so sánh output với Keras

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

### Bước 7 — Tích hợp SoC trên KV260 `HOÀN THÀNH (Bitstream + XSA)`

#### 7.1 Xuất IP từ Vitis HLS

Sau khi C-Sim đạt **94% accuracy (94/100 ảnh)** và C-Synthesis hoàn thành, IP được export sang Vivado IP Catalog:

- Format: IP Catalog (`.zip`)
- Giao diện HLS tự sinh: `s_axi_control`, `s_axi_control_r`, `m_axi_gmem0`, `m_axi_gmem1`

#### 7.2 Kiến trúc Block Design (Vivado 2022.2)

```
┌─────────────────────────────────────────────────────────┐
│                  Zynq UltraScale+ MPSoC                 │
│   M_AXI_HPM0_LPD ──→ axi_interconnect_ctrl             │
│   S_AXI_HP0_FPD  ←── axi_interconnect_mem              │
│   pl_clk0 (100 MHz) ──→ toàn bộ PL domain              │
│   pl_resetn0 ──→ proc_sys_reset_0                       │
└─────────────────────────────────────────────────────────┘
         │ M00/M01_AXI                  ↑ M00_AXI
         ↓                              │
  ┌─────────────┐              ┌────────────────┐
  │ ctrl intercon│              │ mem interconnect│
  │ 1S → 2M     │              │ 2S → 1M        │
  └──────┬──────┘              └───────┬────────┘
         │ s_axi_control/r             │ m_axi_gmem0/1
         ↓                             │
  ┌──────────────────────────────────────────────┐
  │            inference_top_0  (HLS IP)         │
  │  Input: 784 pixels (gmem0)                   │
  │  Weights denoiser 665 + classifier 5738      │
  │        (gmem1 — packed array)                │
  │  Output: predicted digit → s_axi_control_r  │
  └──────────────────────────────────────────────┘
```

| Khối | Vai trò |
|------|---------|
| `zynq_ultra_ps_e_0` | Processing System — clock, reset, AXI master/slave |
| `inference_top_0` | HLS IP (PL) — chạy Denoiser + Classifier |
| `axi_interconnect_ctrl` | PS → IP: 1 slave (`M_AXI_HPM0_LPD`) → 2 masters (`s_axi_control`, `s_axi_control_r`) |
| `axi_interconnect_mem` | IP → DDR: 2 slaves (`m_axi_gmem0/1`) → 1 master (`S_AXI_HP0_FPD`) |
| `proc_sys_reset_0` | Đồng bộ clock/reset cho toàn PL |

#### 7.3 Address Map

| Interface | Địa chỉ | Kích thước | Mục đích |
|-----------|---------|-----------|----------|
| `s_axi_control` | `0xA000_0000` | 64 KB | PS ghi lệnh, địa chỉ input/weights |
| `s_axi_control_r` | `0xA001_0000` | 64 KB | PS đọc kết quả (predicted digit) |
| `m_axi_gmem0/1` → `S_AXI_HP0_FPD` | `0x0000_0000` | 2 GB | IP đọc dữ liệu từ DDR |

#### 7.4 Lý giải thiết kế

**Tại sao dùng AXI Interconnect thay SmartConnect?**
SmartConnect trong Vivado 2022.2 sinh sub-BD nội bộ (`_bd_48ac`) cần OOC synthesis riêng — khi project bị reset thì module này trở thành black box, gây lỗi DRC `INBB-3`. AXI Interconnect 2.1 không có vấn đề này, netlist được generate trực tiếp, ổn định hơn.

**Tại sao dùng 2 AXI Interconnect riêng?**
- `ctrl`: PS cần **write** lệnh xuống IP (AP_START, địa chỉ buffer) và **read** kết quả — đây là traffic nhỏ, latency-sensitive → dùng LPD master (thấp trễ hơn FPD với các lệnh nhỏ)
- `mem`: IP cần **burst read** 784 + 6403 words từ DDR → throughput-sensitive → nối thẳng vào HP0 (High Performance port, 128-bit data bus) để tối đa băng thông

**Clock domain:** Toàn bộ PL chạy 1 clock domain duy nhất (`pl_clk0` ≈ 100 MHz), tránh CDC (Clock Domain Crossing) phức tạp.

#### 7.5 Kết quả

| Hạng mục | Kết quả |
|----------|---------|
| Validate Block Design | **PASS** |
| Generate Bitstream | **PASS** (`write_bitstream completed successfully`) |
| Export Hardware (.xsa) | **PASS** (`design_1_wrapper.xsa`) |

#### 7.6 Bước tiếp theo (deployment)

Triển khai lên board KV260 qua PetaLinux (thực hiện bởi GVHD qua remote):
```bash
petalinux-create -t project -n doan1_inference --template zynqMP
petalinux-config --get-hw-description=design_1_wrapper.xsa
petalinux-build
petalinux-package --boot --u-boot --fpga --force
```

PS userspace app ghi input vào DDR, map `0xA000_0000` qua `/dev/mem`, kích hoạt AP_START, đọc kết quả từ `s_axi_control_r`.

---

## Cấu trúc thư mục

```
DoAn1/
├── train_denoiser_keras.py        # Bước 1: train denoiser (Keras/TF)
├── train_classifier_keras.py      # Bước 2: train classifier (Keras/TF)
├── generate_report.py             # Tạo báo cáo PDF bước 1
├── results_step1_keras/
│   ├── denoiser.h5                # Weights denoiser (Keras)
│   └── ...
├── results_step2_keras/
│   ├── classifier_fpga.h5         # Weights classifier FPGA-optimized (Keras)
│   ├── classifier_no_dropout.h5   # Weights classifier không dropout
│   └── ...
├── Vivado/                        # Bước 7: Vivado 2022.2 Block Design + Bitstream
├── hls_project/                   # Bước 6: Vitis HLS project
├── papers/                        # Tài liệu tham khảo
└── data/                          # MNIST dataset (auto-download)
```

---

## Môi trường

| Công cụ | Phiên bản |
|---------|----------|
| Python | 3.13 |
| TensorFlow/Keras | 2.21.0 |
| Vitis HLS | 2022.2 |
| Vivado | 2022.2 |
| FPGA Board | AMD KV260 (Zynq UltraScale+, xck26-sfvc784-2LV-c) |

---

## Tài liệu tham khảo

Xem thư mục `papers/` — bao gồm các bài báo về:
- Denoising Autoencoders (Vincent 2008, 2010)
- Convolutional Autoencoder trên MNIST (Mascharka 2017)
- FPGA Autoencoder (Soltani 2023)
- Fixed-Point Quantization cho CNN (Goyal 2021, Marquez 2024)
- FINN: BNN trên FPGA (Umuroglu 2016)
