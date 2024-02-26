# Packer Configuration for Creating Ubuntu-Pytorch KVM Images

This Packer configuration is designed to create Ubuntu-pytorch KVM images using QEMU.

## Prerequisites

Before running the Packer build, ensure you have the following prerequisites installed:

- Packer
- QEMU

## Usage

1. Clone this repository:

   ```bash
   git clone https://github.com/YashPimple/actuated-packer-qemu.git
   cd actuated-packer-qem
   chmod +x actuated-packer-qemu/scripts/app.sh

2. Packer cmd
   ```bash
   packer init .
   packer validate .
   packer build .

   
   
