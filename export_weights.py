import numpy as np
import tensorflow as tf
import os

DENOISER_H5  = "results_step1_keras/denoiser.h5"
CLASSIF_H5   = "results_step2_keras/classifier_fpga.h5"
OUT_DIR      = "hls_project/pipeline"

def export_weights(h5_path, out_path):
    model = tf.keras.models.load_model(h5_path)
    weights = []
    for layer in model.layers:
        for w in layer.get_weights():
            weights.extend(w.flatten().tolist())
    with open(out_path, "w") as f:
        for v in weights:
            f.write(f"{v:.8f}\n")
    print(f"{os.path.basename(h5_path)}: {len(weights)} weights → {out_path}")

export_weights(DENOISER_H5,  os.path.join(OUT_DIR, "Weights_denoiser.txt"))
export_weights(CLASSIF_H5,   os.path.join(OUT_DIR, "Weights_classifier.txt"))
print("Xong.")
