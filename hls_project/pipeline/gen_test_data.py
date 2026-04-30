"""
Tạo X_test_noisy.txt và Y_test.txt từ MNIST test set (raw binary).
Chạy từ thư mục pipeline/:
    python gen_test_data.py
"""

import sys, os, struct
import numpy as np

N = 100         # số ảnh xuất ra
NOISE_STD = 0.5 # phải khớp với lúc train

raw_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                       '..', '..', 'data', 'MNIST', 'raw')

def load_mnist_images(path):
    with open(path, 'rb') as f:
        magic, n, h, w = struct.unpack('>IIII', f.read(16))
        data = np.frombuffer(f.read(), dtype=np.uint8)
    return data.reshape(n, h, w).astype(np.float32) / 255.0

def load_mnist_labels(path):
    with open(path, 'rb') as f:
        magic, n = struct.unpack('>II', f.read(8))
        data = np.frombuffer(f.read(), dtype=np.uint8)
    return data.astype(np.int32)

x_test = load_mnist_images(os.path.join(raw_dir, 't10k-images-idx3-ubyte'))
y_test = load_mnist_labels(os.path.join(raw_dir, 't10k-labels-idx1-ubyte'))

# Thêm Gaussian noise σ=0.5, clip [0,1]
np.random.seed(42)
noise  = np.random.normal(0, NOISE_STD, x_test[:N].shape).astype(np.float32)
x_noisy = np.clip(x_test[:N] + noise, 0.0, 1.0)

out_dir = os.path.dirname(os.path.abspath(__file__))

# Xuất X_test_noisy.txt
with open(os.path.join(out_dir, 'X_test_noisy.txt'), 'w') as f:
    for i in range(N):
        for val in x_noisy[i].flatten():
            f.write(f"{val:.6f}\n")

# Xuất Y_test.txt
with open(os.path.join(out_dir, 'Y_test.txt'), 'w') as f:
    for i in range(N):
        f.write(f"{y_test[i]}\n")

print(f"OK  X_test_noisy.txt  ({N} x 784 pixels)")
print(f"OK  Y_test.txt        ({N} labels: {y_test[:N].tolist()[:10]}...)")
