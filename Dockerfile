FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-runtime

WORKDIR /app/

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qq && \
        apt-get install -y sudo less vim nano iputils-ping wget curl git autoconf automake cmake curl g++ \
		git graphviz libatlas3-base libtool make pkg-config subversion unzip zlib1g-dev \
        libasound2-plugins libsox-fmt-all sox ffmpeg && \
        apt-get clean


RUN apt-get install -y llvm-8 llvm-8-dev libedit-dev build-essential

COPY requirements.txt requirements.txt
RUN LLVM_CONFIG=/usr/bin/llvm-config-8 pip install -r requirements.txt
RUN pip install easydict Cython
RUN pip install cython_bbox loguru scikit-image tqdm Pillow thop ninja tabulate lap motmetrics filterpy h5py

RUN git clone https://github.com/ifzhang/ByteTrack.git && cd ByteTrack && pip install .

ENV NUMBA_CACHE_DIR=/tmp

ENV HOME=/workspace/Wav2Lip/cache
WORKDIR /workspace/Wav2Lip
