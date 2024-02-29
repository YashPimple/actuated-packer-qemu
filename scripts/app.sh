#!/bin/bash


sudo apt update
sudo apt install -y python3
sudo apt install -y python3-pip

sudo apt install -y python3-venv
python3 -m venv myenv
source myenv/bin/activate
pip install keras

python -c "import keras; print(keras.__version__)"

name=$IMAGE_NAME
version=$IMAGE_VERSION
image="${name}${version}"
path_image="artifacts/qemu/${image}"

file_ext=$IMAGE_FORMAT
if [ "$format" = "raw" ]; then
  file_ext="img"
fi

# go to the artifact folder
cd ${path_image}

# rename the image, compute shasum
mv packer-${image} ${image}.${file_ext}
sha256sum ${image}.${file_ext} > ${image}.${file_ext}.sha256sum
