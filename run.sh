#!/bin/bash

python inference.py \
 --checkpoint_path ./checkpoints/wav2lip_gan.pth \
 --face ./data/roma_short.webm \
 --audio ./data/roma_audio_en.wav \
# --face_det_batch_size 1 \
# --wav2lip_batch_size 1 \
# --resize_factor 4
#--face ./data/dictator_orig.mp4 \