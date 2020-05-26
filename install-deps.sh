#!/bin/bash
set -ex

sudo apt-get update
sudo apt-get upgrade

sudo apt-get purge wolfram-engine
sudo apt-get purge -y libreoffice*
sudo apt-get clean
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y

sudo apt-get install -y build-essential cmake unzip pkg-config
sudo apt-get install -y libjpeg-dev libpng-dev libtiff-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install -y libxvidcore-dev libx264-dev
sudo apt-get install -y libcanberra-gtk*
sudo apt-get install -y libgtk-3-dev
sudo apt-get install -y libboost-all-dev
sudo apt-get install -y libopenblas-dev liblapack-dev libatlas-base-dev gfortran
sudo apt-get install -y python3-dev
sudo apt-get install -y pipenv
