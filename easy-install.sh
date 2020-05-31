#!/bin/bash
set -u

git clone https://github.com/alexandremendoncaalvaro/install-opencv-dlib-raspbian.git ~/install-opencv-dlib-raspbian

echo "Setting current directory as the Python project directory"
echo $PWD >> ~/install-opencv-dlib-raspbian/current-dir.txt

cd ~/install-opencv-dlib-raspbian
chmod +x ~/install-opencv-dlib-raspbian/*.sh

echo "Prepare to run after reboot..."
sudo \cp ~/install-opencv-dlib-raspbian/easy-install-after-reboot.sh /etc/init.d/
sudo chmod +x /etc/init.d/easy-install-after-reboot.sh

echo "Registering script on boot..."
sudo update-rc.d easy-install-after-reboot.sh defaults

echo "Optimizing system for installation..."
~/install-opencv-dlib-raspbian/swapfile.sh

sudo raspi-config --expand-rootfs
sudo raspi-config nonint do_boot_behaviour B2
sudo raspi-config nonint do_memory_split 16

sudo reboot