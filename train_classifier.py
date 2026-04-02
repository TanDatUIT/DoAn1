"""
Đồ Án 1 - Bước 2: Chứng minh hiệu quả Denoiser
Train classifier nhận dạng chữ số 0-9, so sánh accuracy trên:
  - Ảnh sạch (baseline)
  - Ảnh nhiễu
  - Ảnh đã khử nhiễu
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

# Font tiếng Việt
plt.rcParams['font.family'] = 'DejaVu Sans'

# ========================== CẤU HÌNH ==========================
NOISE_STD = 0.5
BATCH_SIZE = 128
EPOCHS = 15
LR = 1e-3
DEVICE = torch.device("cuda" if torch.cuda.is_available() else "cpu")
SAVE_DIR = "results_step2"
DENOISER_PATH = "results_step1/denoiser.pth"

# ========================== DENOISER (load từ bước 1) ==========================
class DenoisingAutoencoder(nn.Module):
    def __init__(self):
        super().__init__()
        self.conv1 = nn.Conv2d(1, 4, kernel_size=3, padding=1)
        self.relu1 = nn.ReLU()
        self.pool  = nn.MaxPool2d(2, 2)
        self.conv2 = nn.Conv2d(4, 8, kernel_size=3, padding=1)
        self.relu2 = nn.ReLU()
        self.up    = nn.Upsample(scale_factor=2, mode='nearest')
        self.conv3 = nn.Conv2d(8, 4, kernel_size=3, padding=1)
        self.relu3 = nn.ReLU()
        self.conv4 = nn.Conv2d(4, 1, kernel_size=3, padding=1)
        self.sigmoid = nn.Sigmoid()

    def forward(self, x):
        x = self.relu1(self.conv1(x))
        x = self.pool(x)
        x = self.relu2(self.conv2(x))
        x = self.up(x)
        x = self.relu3(self.conv3(x))
        x = self.sigmoid(self.conv4(x))
        return x

# ========================== CLASSIFIER (LeNet nhẹ) ==========================
class DigitClassifier(nn.Module):
    """
    LeNet nhẹ cho nhận dạng chữ số MNIST.
    Input 28x28x1 -> Conv(6) -> Pool -> Conv(16) -> Pool -> FC(84) -> FC(10)
    """
    def __init__(self):
        super().__init__()
        self.features = nn.Sequential(
            nn.Conv2d(1, 6, kernel_size=5, padding=2),   # 28x28x6
            nn.ReLU(),
            nn.MaxPool2d(2, 2),                           # 14x14x6
            nn.Conv2d(6, 16, kernel_size=5),              # 10x10x16
            nn.ReLU(),
            nn.MaxPool2d(2, 2),                           # 5x5x16
        )
        self.classifier = nn.Sequential(
            nn.Flatten(),
            nn.Linear(16 * 5 * 5, 84),
            nn.ReLU(),
            nn.Linear(84, 10),
        )

    def forward(self, x):
        x = self.features(x)
        x = self.classifier(x)
        return x


# ========================== HÀM TIỆN ÍCH ==========================
def add_noise(images, std=NOISE_STD):
    noise = torch.randn_like(images) * std
    return torch.clamp(images + noise, 0.0, 1.0)


def evaluate_accuracy(classifier, dataloader, preprocess=None):
    """
    Đánh giá accuracy. preprocess có thể là None, 'noise', hoặc model denoiser.
    """
    classifier.eval()
    correct = 0
    total = 0
    with torch.no_grad():
        for images, labels in dataloader:
            images, labels = images.to(DEVICE), labels.to(DEVICE)

            if preprocess == 'noise':
                images = add_noise(images)
            elif preprocess is not None:
                # preprocess = denoiser model
                noisy = add_noise(images)
                images = preprocess(noisy)

            outputs = classifier(images)
            _, predicted = torch.max(outputs, 1)
            total += labels.size(0)
            correct += (predicted == labels).sum().item()

    return 100.0 * correct / total


# ========================== MAIN ==========================
def main():
    os.makedirs(SAVE_DIR, exist_ok=True)

    # Dataset
    transform = transforms.ToTensor()
    train_set = datasets.MNIST(root="./data", train=True,  download=True, transform=transform)
    test_set  = datasets.MNIST(root="./data", train=False, download=True, transform=transform)
    train_loader = DataLoader(train_set, batch_size=BATCH_SIZE, shuffle=True)
    test_loader  = DataLoader(test_set,  batch_size=BATCH_SIZE, shuffle=False)

    # Load denoiser
    denoiser = DenoisingAutoencoder().to(DEVICE)
    denoiser.load_state_dict(torch.load(DENOISER_PATH, map_location=DEVICE, weights_only=True))
    denoiser.eval()
    print(f"Đã load denoiser từ {DENOISER_PATH}")

    # Classifier
    classifier = DigitClassifier().to(DEVICE)
    criterion = nn.CrossEntropyLoss()
    optimizer = optim.Adam(classifier.parameters(), lr=LR)

    print(f"Device: {DEVICE}")
    print(f"Classifier params: {sum(p.numel() for p in classifier.parameters()):,}")
    print(f"{'='*60}")

    # Train classifier trên ảnh SẠCH
    print("\nTraining classifier trên ảnh sạch...")
    history = {"epoch": [], "train_acc": [], "val_acc": []}

    for epoch in range(1, EPOCHS + 1):
        classifier.train()
        correct = 0
        total = 0
        for images, labels in train_loader:
            images, labels = images.to(DEVICE), labels.to(DEVICE)
            outputs = classifier(images)
            loss = criterion(outputs, labels)

            optimizer.zero_grad()
            loss.backward()
            optimizer.step()

            _, predicted = torch.max(outputs, 1)
            total += labels.size(0)
            correct += (predicted == labels).sum().item()

        train_acc = 100.0 * correct / total
        val_acc = evaluate_accuracy(classifier, test_loader, preprocess=None)

        history["epoch"].append(epoch)
        history["train_acc"].append(train_acc)
        history["val_acc"].append(val_acc)

        print(f"  Epoch {epoch:02d}/{EPOCHS} | Train Acc: {train_acc:.2f}% | Val Acc: {val_acc:.2f}%")

    # ========================== ĐÁNH GIÁ 3 KỊCH BẢN ==========================
    print(f"\n{'='*60}")
    print("Đánh giá trên 10,000 ảnh test:")

    acc_clean    = evaluate_accuracy(classifier, test_loader, preprocess=None)
    acc_noisy    = evaluate_accuracy(classifier, test_loader, preprocess='noise')
    acc_denoised = evaluate_accuracy(classifier, test_loader, preprocess=denoiser)

    print(f"  Ảnh sạch     (baseline): {acc_clean:.2f}%")
    print(f"  Ảnh nhiễu    (σ=0.5):    {acc_noisy:.2f}%")
    print(f"  Ảnh khử nhiễu:           {acc_denoised:.2f}%")
    print(f"  Cải thiện so với nhiễu:   +{acc_denoised - acc_noisy:.2f}%")
    print(f"{'='*60}")

    # ========================== LƯU KẾT QUẢ ==========================

    # 1. Metrics
    metrics = {
        "noise_std": NOISE_STD,
        "classifier_params": sum(p.numel() for p in classifier.parameters()),
        "epochs": EPOCHS,
        "acc_clean": acc_clean,
        "acc_noisy": acc_noisy,
        "acc_denoised": acc_denoised,
        "improvement": acc_denoised - acc_noisy,
    }
    with open(os.path.join(SAVE_DIR, "metrics.json"), "w") as f:
        json.dump(metrics, f, indent=2)

    # 2. Model
    torch.save(classifier.state_dict(), os.path.join(SAVE_DIR, "classifier.pth"))

    # 3. Biểu đồ accuracy
    fig, ax = plt.subplots(figsize=(8, 5))
    ax.plot(history["epoch"], history["train_acc"], 'b-', linewidth=2, label="Train Acc")
    ax.plot(history["epoch"], history["val_acc"],   'r-', linewidth=2, label="Val Acc")
    ax.set_xlabel("Epoch", fontsize=12)
    ax.set_ylabel("Accuracy (%)", fontsize=12)
    ax.set_title("Classifier Training (trên ảnh sạch)", fontsize=13)
    ax.legend(fontsize=11)
    ax.grid(True, alpha=0.3)
    plt.tight_layout()
    plt.savefig(os.path.join(SAVE_DIR, "training_acc.png"), dpi=150)
    plt.close()

    # 4. Biểu đồ so sánh 3 kịch bản
    fig, ax = plt.subplots(figsize=(8, 5))
    labels = ['Ảnh sạch\n(baseline)', 'Ảnh nhiễu\n(σ=0.5)', 'Ảnh khử nhiễu\n(denoised)']
    values = [acc_clean, acc_noisy, acc_denoised]
    colors = ['#2ecc71', '#e74c3c', '#3498db']
    bars = ax.bar(labels, values, color=colors, width=0.5, edgecolor='black', linewidth=0.8)

    for bar, val in zip(bars, values):
        ax.text(bar.get_x() + bar.get_width()/2, bar.get_height() + 0.5,
                f'{val:.1f}%', ha='center', va='bottom', fontsize=13, fontweight='bold')

    ax.set_ylabel("Accuracy (%)", fontsize=12)
    ax.set_title("So sánh Accuracy nhận dạng chữ số", fontsize=14)
    ax.set_ylim(0, 105)
    ax.grid(axis='y', alpha=0.3)
    plt.tight_layout()
    plt.savefig(os.path.join(SAVE_DIR, "accuracy_comparison.png"), dpi=150)
    plt.close()

    # 5. Ảnh minh họa 3 loại + nhãn dự đoán
    classifier.eval()
    denoiser.eval()
    test_iter = iter(test_loader)
    images, labels_gt = next(test_iter)
    images = images[:10].to(DEVICE)
    labels_gt = labels_gt[:10]

    noisy = add_noise(images)
    with torch.no_grad():
        denoised = denoiser(noisy)
        pred_clean = classifier(images).argmax(1).cpu()
        pred_noisy = classifier(noisy).argmax(1).cpu()
        pred_denoised = classifier(denoised).argmax(1).cpu()

    fig, axes = plt.subplots(3, 10, figsize=(15, 6))
    row_titles = [
        "Ảnh sạch (pred)",
        "Ảnh nhiễu (pred)",
        "Khử nhiễu (pred)"
    ]
    imgs_list = [images.cpu(), noisy.cpu(), denoised.cpu()]
    preds_list = [pred_clean, pred_noisy, pred_denoised]

    for row in range(3):
        for col in range(10):
            axes[row, col].imshow(imgs_list[row][col].squeeze(), cmap='gray', vmin=0, vmax=1)
            gt = labels_gt[col].item()
            pr = preds_list[row][col].item()
            color = 'green' if pr == gt else 'red'
            axes[row, col].set_title(f'{pr}', fontsize=10, color=color)
            axes[row, col].axis('off')
        axes[row, 0].set_ylabel(row_titles[row], fontsize=10, rotation=0,
                                 labelpad=80, va='center')

    plt.suptitle(f"Nhận dạng chữ số: xanh=đúng, đỏ=sai  |  GT: {labels_gt.tolist()}", fontsize=12)
    plt.tight_layout()
    plt.savefig(os.path.join(SAVE_DIR, "prediction_comparison.png"), dpi=150)
    plt.close()

    # 6. History
    with open(os.path.join(SAVE_DIR, "history.json"), "w") as f:
        json.dump(history, f, indent=2)

    print(f"\nĐã lưu kết quả vào {SAVE_DIR}/:")
    print("  - metrics.json            : Accuracy 3 kịch bản")
    print("  - classifier.pth          : Model weights")
    print("  - training_acc.png        : Biểu đồ training")
    print("  - accuracy_comparison.png : Biểu đồ so sánh 3 kịch bản")
    print("  - prediction_comparison.png: Ảnh minh họa + nhãn dự đoán")


if __name__ == "__main__":
    main()
