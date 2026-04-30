"""
Train Denoising Autoencoder bang Keras - xuat file .h5 cho Py2C
Kien truc: Conv(1->4,k3,same)+ReLU -> Pool -> Conv(4->8,k3,same)+ReLU
           -> Upsample -> Conv(8->4,k3,same)+ReLU -> Conv(4->1,k3,same)+Sigmoid
"""

import os
import numpy as np
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers

NOISE_STD  = 0.5
BATCH_SIZE = 128
EPOCHS     = 100
SAVE_DIR   = "results_step1_keras"

# ========================== NOISE ==========================
def add_noise(images):
    noise = np.random.normal(0, NOISE_STD, images.shape).astype(np.float32)
    return np.clip(images + noise, 0.0, 1.0)

# ========================== MODEL ==========================
def build_denoiser():
    inp = keras.Input(shape=(28, 28, 1), name="input")
    # Encoder: 28x28 -> 14x14
    x = layers.Conv2D(4, 3, padding="same", activation="relu", name="conv1")(inp)
    x = layers.MaxPool2D(2, name="pool")(x)
    x = layers.Conv2D(8, 3, padding="same", activation="relu", name="conv2")(x)
    # Decoder: 14x14 -> 28x28
    x = layers.UpSampling2D(2, name="upsample")(x)
    x = layers.Conv2D(4, 3, padding="same", activation="relu", name="conv3")(x)
    x = layers.Conv2D(1, 3, padding="same", activation="sigmoid", name="conv4")(x)
    return keras.Model(inp, x, name="denoiser")

def psnr_metric(y_true, y_pred):
    mse = tf.reduce_mean(tf.square(y_true - y_pred), axis=[1, 2, 3])
    return tf.reduce_mean(10.0 * tf.math.log(1.0 / (mse + 1e-10)) / tf.math.log(10.0))

# ========================== MAIN ==========================
def main():
    os.makedirs(SAVE_DIR, exist_ok=True)

    # Load MNIST
    (x_train, _), (x_test, _) = keras.datasets.mnist.load_data()
    x_train = x_train.astype(np.float32) / 255.0
    x_test  = x_test.astype(np.float32)  / 255.0
    x_train = x_train[..., np.newaxis]  # (60000, 28, 28, 1)
    x_test  = x_test[..., np.newaxis]

    x_train_noisy = add_noise(x_train)
    x_test_noisy  = add_noise(x_test)

    model = build_denoiser()
    model.summary()
    print(f"Total params: {model.count_params():,}")

    model.compile(optimizer="adam", loss="binary_crossentropy", metrics=[psnr_metric])

    callbacks = [
        keras.callbacks.EarlyStopping(monitor="val_loss", patience=10, restore_best_weights=True),
        keras.callbacks.ReduceLROnPlateau(monitor="val_loss", factor=0.5, patience=5, min_lr=1e-6),
    ]

    model.fit(
        x_train_noisy, x_train,
        batch_size=BATCH_SIZE,
        epochs=EPOCHS,
        validation_data=(x_test_noisy, x_test),
        callbacks=callbacks,
        verbose=1
    )

    # Evaluate
    y_pred = model.predict(x_test_noisy, verbose=0)
    mse = np.mean((y_pred - x_test) ** 2)
    psnr = 10 * np.log10(1.0 / (mse + 1e-10))
    print(f"\nTest MSE: {mse:.6f}")
    print(f"Test PSNR: {psnr:.2f} dB")

    # Save .h5
    h5_path = os.path.join(SAVE_DIR, "denoiser.h5")
    model.save(h5_path)
    print(f"Saved: {h5_path}")

if __name__ == "__main__":
    main()
