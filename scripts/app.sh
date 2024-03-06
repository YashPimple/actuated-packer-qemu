#!/bin/bash

sleep 30

sudo yum update -y

sudo apt update -y python3-pip libgl1-mesa-glx
sudo apt install -y python3-pip
pip3 install torch==2.2.0 torchvision torchaudio
pip3 install opencv-python

name=$IMAGE_NAME
version=$IMAGE_VERSION
image="${name}${version}"
path_image="artifacts/qemu/${image}"

file_ext=$IMAGE_FORMAT
if [ "$format" = "raw" ]; then
  file_ext="img"
fi

cd ${path_image}

mv packer-${image} ${image}.${file_ext}
sha256sum ${image}.${file_ext} > ${image}.${file_ext}.sha256sum
