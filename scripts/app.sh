#!/bin/bash

sleep 30

sudo yum update -y

sudo apt update
sudo apt install -y python3-pip
pip3 install torch==2.2.0