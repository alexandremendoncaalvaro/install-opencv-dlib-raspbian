#!/bin/bash
set -ex

echo "[INFO] Downloading script files.."
git clone https://github.com/alexandremendoncaalvaro/install-opencv-dlib-raspbian.git ~/install-opencv-dlib-raspbian

echo "[INFO] Setting current directory as the Python project directory.."
echo $PWD >> ~/install-opencv-dlib-raspbian/current-dir.txt

cd ~/install-opencv-dlib-raspbian
sudo chmod +x ~/install-opencv-dlib-raspbian/*.sh

echo "[INFO] Optimizing system for installation.."
~/install-opencv-dlib-raspbian/swapfile.sh
sudo raspi-config --expand-rootfs
sudo raspi-config nonint do_boot_behaviour B2
sudo raspi-config nonint do_memory_split 16

echo "[INFO] DONE! rebooting to command line interface.."
sudo reboot
