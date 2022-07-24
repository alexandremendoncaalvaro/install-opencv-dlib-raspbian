#!/bin/bash
set -ex

sudo apt purge -y wolfram-engine
sudo apt purge -y libreoffice*
sudo apt clean
sudo apt update -y
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y

sudo apt install -y build-essential cmake unzip pkg-config
sudo apt install -y libjpeg-dev libpng-dev libtiff-dev
sudo apt install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt install -y libxvidcore-dev libx264-dev
sudo apt install -y libcanberra-gtk*
sudo apt install -y libgtk-3-dev
sudo apt install -y libboost-all-dev
sudo apt install -y libopenblas-dev liblapack-dev libatlas-base-dev gfortran
sudo apt install -y python3-dev
pip install pipenv
