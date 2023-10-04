#!/bin/bash

python inference.py \
 --checkpoint_path ./checkpoints/wav2lip_gam.pth \
 --face ./data/dictator_orig.mp4 \
 --audio ./data/dictator_audio_extracted.wav
