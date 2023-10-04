FROM pytorch/pytorch:1.1.0-cuda10.0-cudnn7.5-runtime

RUN apt-get update -y
RUN apt-get install -y sudo less vim nano iputils-ping wget curl git autoconf automake cmake curl g++ \
 git graphviz libatlas3-base libtool make pkg-config subversion unzip zlib1g-dev \
 libglib2.0-0 libsm6 libxext6 libxrender-dev libsndfile1 ffmpeg

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

ENV NUMBA_CACHE_DIR=/tmp

ENV HOME=/workspace/Wav2Lip/cache
WORKDIR /workspace/Wav2Lip
