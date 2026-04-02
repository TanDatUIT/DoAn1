"""
Đồ Án 1 - Bước 1: Python Baseline
Autoencoder khử nhiễu ảnh chữ số viết tay (MNIST)
Kiến trúc: Conv4 -> ReLU -> Pool -> Conv8 -> ReLU -> Upsample -> Conv4 -> ReLU -> Conv1 -> Sigmoid
"""

import os
import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import DataLoader
from torchvision import datasets, transforms
import matplotlib.pyplot as plt
import numpy as np
import json
from datetime import datetime

# ========================== CẤU HÌNH ==========================
NOISE_STD = 0.5          # Độ lệch chuẩn nhiễu Gaussian
BATCH_SIZE = 128
EPOCHS = 50
LR = 1e-3
DEVICE = torch.device("cuda" if torch.cuda.is_available() else "cpu")
SAVE_DIR = "results_step1"

# ========================== MÔ HÌNH ==========================
class DenoisingAutoencoder(nn.Module):
    """
    Kiến trúc theo lộ trình đồ án:
    Input 28x28x1 -> Conv4 -> ReLU -> Pool -> Conv8 -> ReLU
                   -> Upsample -> Conv4 -> ReLU -> Conv1 -> Sigmoid
    """
    def __init__(self):
        super().__init__()
        # Encoder
        self.conv1 = nn.Conv2d(1, 4, kernel_size=3, padding=1)   # 28x28x1  -> 28x28x4
        self.relu1 = nn.ReLU()
        self.pool  = nn.MaxPool2d(2, 2)                           # 28x28x4  -> 14x14x4
        self.conv2 = nn.Conv2d(4, 8, kernel_size=3, padding=1)   # 14x14x4  -> 14x14x8
        self.relu2 = nn.ReLU()

        # Decoder
        self.up    = nn.Upsample(scale_factor=2, mode='nearest') # 14x14x8  -> 28x28x8
        self.conv3 = nn.Conv2d(8, 4, kernel_size=3, padding=1)   # 28x28x8  -> 28x28x4
        self.relu3 = nn.ReLU()
        self.conv4 = nn.Conv2d(4, 1, kernel_size=3, padding=1)   # 28x28x4  -> 28x28x1
        self.sigmoid = nn.Sigmoid()

    def forward(self, x):
        # Encoder
        x = self.relu1(self.conv1(x))
        x = self.pool(x)
        x = self.relu2(self.conv2(x))
        # Decoder
        x = self.up(x)
        x = self.relu3(self.conv3(x))
        x = self.sigmoid(self.conv4(x))
        return x


# ========================== HÀM TIỆN ÍCH ==========================
def add_noise(images, std=NOISE_STD):
    """Thêm nhiễu Gaussian, clamp về [0, 1]."""
    noise = torch.randn_like(images) * std
    return torch.clamp(images + noise, 0.0, 1.0)


def compute_psnr(clean, denoised):
    """Tính PSNR (dB) trung bình trên batch."""
    mse = torch.mean((clean - denoised) ** 2, dim=[1, 2, 3])
    psnr = 10 * torch.log10(1.0 / (mse + 1e-10))
    return psnr.mean().item()


def compute_mse(clean, denoised):
    """Tính MSE trung bình trên batch."""
    return torch.mean((clean - denoised) ** 2).item()


# ========================== TRAIN ==========================
def train():
    os.makedirs(SAVE_DIR, exist_ok=True)

    # Dataset
    transform = transforms.ToTensor()  # [0, 255] -> [0.0, 1.0]
    train_set = datasets.MNIST(root="./data", train=True,  download=True, transform=transform)
    test_set  = datasets.MNIST(root="./data", train=False, download=True, transform=transform)
    train_loader = DataLoader(train_set, batch_size=BATCH_SIZE, shuffle=True)
    test_loader  = DataLoader(test_set,  batch_size=BATCH_SIZE, shuffle=False)

    # Model
    model = DenoisingAutoencoder().to(DEVICE)
    criterion = nn.MSELoss()
    optimizer = optim.Adam(model.parameters(), lr=LR)

    print(f"Device: {DEVICE}")
    print(f"Model parameters: {sum(p.numel() for p in model.parameters()):,}")
    print(f"Noise std: {NOISE_STD}")
    print(f"{'='*55}")

    # Training loop
    history = {"epoch": [], "train_loss": [], "val_loss": [], "val_psnr": []}

    for epoch in range(1, EPOCHS + 1):
        # --- Train ---
        model.train()
        train_loss = 0.0
        for images, _ in train_loader:
            images = images.to(DEVICE)
            noisy = add_noise(images)
            output = model(noisy)
            loss = criterion(output, images)

            optimizer.zero_grad()
            loss.backward()
            optimizer.step()
            train_loss += loss.item() * images.size(0)

        train_loss /= len(train_set)

        # --- Validate ---
        model.eval()
        val_loss = 0.0
        val_psnr = 0.0
        n_batches = 0
        with torch.no_grad():
            for images, _ in test_loader:
                images = images.to(DEVICE)
                noisy = add_noise(images)
                output = model(noisy)
                val_loss += criterion(output, images).item() * images.size(0)
                val_psnr += compute_psnr(images, output)
                n_batches += 1

        val_loss /= len(test_set)
        val_psnr /= n_batches

        history["epoch"].append(epoch)
        history["train_loss"].append(train_loss)
        history["val_loss"].append(val_loss)
        history["val_psnr"].append(val_psnr)

        print(f"Epoch {epoch:02d}/{EPOCHS} | "
              f"Train Loss: {train_loss:.6f} | "
              f"Val Loss: {val_loss:.6f} | "
              f"Val PSNR: {val_psnr:.2f} dB")

    # ========================== ĐÁNH GIÁ CUỐI ==========================
    print(f"\n{'='*55}")
    print("Đánh giá trên tập test:")

    model.eval()
    total_mse_noisy = 0.0
    total_mse_denoised = 0.0
    total_psnr_noisy = 0.0
    total_psnr_denoised = 0.0
    n_batches = 0

    all_clean = []
    all_noisy = []
    all_denoised = []

    with torch.no_grad():
        for images, _ in test_loader:
            images = images.to(DEVICE)
            noisy = add_noise(images)
            output = model(noisy)

            total_mse_noisy    += compute_mse(images, noisy)
            total_mse_denoised += compute_mse(images, output)
            total_psnr_noisy    += compute_psnr(images, noisy)
            total_psnr_denoised += compute_psnr(images, output)
            n_batches += 1

            if len(all_clean) == 0:
                all_clean.append(images[:10].cpu())
                all_noisy.append(noisy[:10].cpu())
                all_denoised.append(output[:10].cpu())

    mse_noisy    = total_mse_noisy / n_batches
    mse_denoised = total_mse_denoised / n_batches
    psnr_noisy    = total_psnr_noisy / n_batches
    psnr_denoised = total_psnr_denoised / n_batches

    print(f"  Ảnh nhiễu    -> MSE: {mse_noisy:.6f}  | PSNR: {psnr_noisy:.2f} dB")
    print(f"  Ảnh khử nhiễu -> MSE: {mse_denoised:.6f} | PSNR: {psnr_denoised:.2f} dB")
    print(f"  Cải thiện PSNR: +{psnr_denoised - psnr_noisy:.2f} dB")

    # ========================== LƯU KẾT QUẢ ==========================

    # 1. Lưu model
    torch.save(model.state_dict(), os.path.join(SAVE_DIR, "denoiser.pth"))
    print(f"\nĐã lưu model: {SAVE_DIR}/denoiser.pth")

    # 2. Lưu số liệu
    metrics = {
        "noise_std": NOISE_STD,
        "epochs": EPOCHS,
        "learning_rate": LR,
        "total_params": sum(p.numel() for p in model.parameters()),
        "final_train_loss": history["train_loss"][-1],
        "final_val_loss": history["val_loss"][-1],
        "mse_noisy": mse_noisy,
        "mse_denoised": mse_denoised,
        "psnr_noisy_db": psnr_noisy,
        "psnr_denoised_db": psnr_denoised,
        "psnr_improvement_db": psnr_denoised - psnr_noisy,
        "timestamp": datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
    }
    with open(os.path.join(SAVE_DIR, "metrics.json"), "w") as f:
        json.dump(metrics, f, indent=2)
    print(f"Đã lưu số liệu: {SAVE_DIR}/metrics.json")

    # 3. Vẽ loss curve
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 4))
    ax1.plot(history["epoch"], history["train_loss"], label="Train Loss")
    ax1.plot(history["epoch"], history["val_loss"],   label="Val Loss")
    ax1.set_xlabel("Epoch")
    ax1.set_ylabel("MSE Loss")
    ax1.set_title("Loss theo Epoch")
    ax1.legend()
    ax1.grid(True)

    ax2.plot(history["epoch"], history["val_psnr"], label="Val PSNR", color="green")
    ax2.set_xlabel("Epoch")
    ax2.set_ylabel("PSNR (dB)")
    ax2.set_title("PSNR theo Epoch")
    ax2.legend()
    ax2.grid(True)

    plt.tight_layout()
    plt.savefig(os.path.join(SAVE_DIR, "training_curves.png"), dpi=150)
    plt.close()
    print(f"Đã lưu biểu đồ: {SAVE_DIR}/training_curves.png")

    # 4. Vẽ ảnh so sánh (3 hàng: clean / noisy / denoised)
    clean_imgs    = all_clean[0]
    noisy_imgs    = all_noisy[0]
    denoised_imgs = all_denoised[0]

    fig, axes = plt.subplots(3, 10, figsize=(15, 5))
    row_labels = ["Ảnh gốc", "Ảnh nhiễu", "Khử nhiễu"]
    for i in range(10):
        axes[0, i].imshow(clean_imgs[i].squeeze(), cmap="gray", vmin=0, vmax=1)
        axes[1, i].imshow(noisy_imgs[i].squeeze(), cmap="gray", vmin=0, vmax=1)
        axes[2, i].imshow(denoised_imgs[i].squeeze(), cmap="gray", vmin=0, vmax=1)
        for row in range(3):
            axes[row, i].axis("off")

    for row, label in enumerate(row_labels):
        axes[row, 0].set_ylabel(label, fontsize=12, rotation=0, labelpad=60, va="center")

    plt.suptitle(f"Kết quả khử nhiễu (noise σ={NOISE_STD}, PSNR: {psnr_denoised:.1f} dB)", fontsize=14)
    plt.tight_layout()
    plt.savefig(os.path.join(SAVE_DIR, "comparison.png"), dpi=150)
    plt.close()
    print(f"Đã lưu ảnh so sánh: {SAVE_DIR}/comparison.png")

    # 5. Lưu training history
    with open(os.path.join(SAVE_DIR, "history.json"), "w") as f:
        json.dump(history, f, indent=2)

    print(f"\n{'='*55}")
    print("Bước 1 hoàn tất! Các file trong thư mục results_step1/:")
    print("  - denoiser.pth        : Model weights")
    print("  - metrics.json        : Số liệu MSE, PSNR")
    print("  - training_curves.png : Biểu đồ loss & PSNR")
    print("  - comparison.png      : Ảnh so sánh gốc/nhiễu/khử nhiễu")
    print("  - history.json        : Lịch sử training")


if __name__ == "__main__":
    train()
