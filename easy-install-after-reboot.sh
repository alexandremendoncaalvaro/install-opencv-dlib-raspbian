#!/bin/bash
set -e

cd ~/install-opencv-dlib-raspbian
~/install-opencv-dlib-raspbian/install.sh

PROJECT_PATH=$(<~/install-opencv-dlib-raspbian/current-dir.txt)

cd $PROJECT_PATH
pipenv install && pipenv shell

echo "Linking OpenCV to Project Virtual Enviroment..."
~/install-opencv-dlib-raspbian/link-virtualenv.sh

echo "Returning system parameters..."
~/install-opencv-dlib-raspbian/swapfile.sh 100
sudo raspi-config nonint do_boot_behaviour B4
sudo raspi-config nonint do_memory_split 128

echo "Unregistering install script on boot..."
sudo update-rc.d -f easy-install-after-reboot.sh remove
sudo rm -f /etc/init.d/easy-install-after-reboot.sh

echo "testing"
~/install-opencv-dlib-raspbian/test.sh

echo "removing installation files..."
sudo rm -rf ~/install-opencv-dlib-raspbian

echo "DONE!