#!/bin/zsh

docker build -t wav2lip:latest .

docker run -it --rm \
 -v $(pwd):/workspace/Wav2Lip \
 --user $(id -u):$(id -g) \
 wav2lip:latest bash