"""
Train Classifier FPGA 5738 params bang Keras - xuat file .h5 cho Py2C
Kien truc: Conv(4,k5,valid)+ReLU->Pool->Conv(8,k5,valid)+ReLU->Pool
           ->Flatten->Dropout(0.2)->Dense(32)->Dropout(0.3)->Dense(16)->Dense(10)
"""

import os
import numpy as np
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers

NOISE_STD  = 0.5
BATCH_SIZE = 128
EPOCHS     = 30
SAVE_DIR   = "results_step2_keras"

def add_noise(images):
    noise = np.random.normal(0, NOISE_STD, images.shape).astype(np.float32)
    return np.clip(images + noise, 0.0, 1.0)

def build_fpga_classifier():
    inp = keras.Input(shape=(28, 28, 1), name="input")
    x = layers.Conv2D(4,  5, padding="valid", activation="relu", name="Conv1_C1")(inp)
    x = layers.MaxPool2D(2, name="MaxPool_S2")(x)
    x = layers.Conv2D(8,  5, padding="valid", activation="relu", name="Conv2_C3")(x)
    x = layers.MaxPool2D(2, name="MaxPool_S4")(x)
    x = layers.Flatten(name="Flatten")(x)
    x = layers.Dropout(0.2, name="Dropout_1")(x)
    x = layers.Dense(32, activation="relu", name="Dense_C5")(x)
    x = layers.Dropout(0.3, name="Dropout_2")(x)
    x = layers.Dense(16, activation="relu", name="Dense_F6")(x)
    x = layers.Dense(10, activation="softmax", name="Output")(x)
    return keras.Model(inp, x, name="fpga_classifier")

def main():
    os.makedirs(SAVE_DIR, exist_ok=True)

    (x_train, y_train), (x_test, y_test) = keras.datasets.mnist.load_data()
    x_train = x_train.astype(np.float32) / 255.0
    x_test  = x_test.astype(np.float32)  / 255.0
    x_train = x_train[..., np.newaxis]
    x_test  = x_test[..., np.newaxis]

    x_train_noisy = add_noise(x_train)
    x_test_noisy  = add_noise(x_test)

    model = build_fpga_classifier()
    model.summary()
    print(f"Total params: {model.count_params():,}")

    model.compile(
        optimizer="adam",
        loss="sparse_categorical_crossentropy",
        metrics=["accuracy"]
    )

    model.fit(
        x_train_noisy, y_train,
        batch_size=BATCH_SIZE,
        epochs=EPOCHS,
        validation_data=(x_test_noisy, y_test),
        verbose=1
    )

    # Evaluate 3 scenarios
    _, acc_noisy = model.evaluate(x_test_noisy, y_test, verbose=0)
    _, acc_clean = model.evaluate(x_test,       y_test, verbose=0)
    print(f"\nAcc (noisy input) : {acc_noisy*100:.2f}%")
    print(f"Acc (clean input) : {acc_clean*100:.2f}%")

    h5_path = os.path.join(SAVE_DIR, "classifier_fpga.h5")
    model.save(h5_path)
    print(f"Saved: {h5_path}")

if __name__ == "__main__":
    main()
