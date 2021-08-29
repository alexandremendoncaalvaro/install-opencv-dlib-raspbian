#!/bin/bash
set -ex

echo "[INFO] Preparing OpenCV Install.."
cd ~/install-opencv-dlib-raspbian
~/install-opencv-dlib-raspbian/install.sh

echo "[INFO] Getting python project path.."
PROJECT_PATH=$(<~/install-opencv-dlib-raspbian/current-dir.txt)

cd $PROJECT_PATH

echo "[INFO] Preparing virtual enviroment.."
pipenv install

echo "[INFO] Linking OpenCV installation to python project virtual enviroment.."
~/install-opencv-dlib-raspbian/link-virtualenv.sh

echo "[INFO] Starting Dlib Install.."
pipenv install 'numpy' 'dlib'

echo "[INFO] Restoring system parameters.."
~/install-opencv-dlib-raspbian/swapfile.sh 100
sudo raspi-config nonint do_boot_behaviour B4
sudo raspi-config nonint do_memory_split 128

echo "[INFO] DONE! rebooting to desktop interface.."
sudo reboot