#! /bin/sh

### BEGIN INIT INFO
# Provides:          easy-install-after-reboot.sh
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
### END INIT INFO

set -e

echo "Preparing OpenCV Install.."
cd ~/install-opencv-dlib-raspbian
~/install-opencv-dlib-raspbian/install.sh

PROJECT_PATH=$(<~/install-opencv-dlib-raspbian/current-dir.txt)

cd $PROJECT_PATH
pipenv install
pipenv shell

echo "Linking OpenCV to Project Virtual Enviroment..."
~/install-opencv-dlib-raspbian/link-virtualenv.sh

echo "Starting Dlib Install.."
pipenv install 'numpy==1.18.4' 'dlib==19.19.0'

echo "Returning system parameters..."
~/install-opencv-dlib-raspbian/swapfile.sh 100
sudo raspi-config nonint do_boot_behaviour B4
sudo raspi-config nonint do_memory_split 128

echo "Unregistering install script on boot..."
sudo update-rc.d -f easy-install-after-reboot.sh remove
sudo rm -f /etc/init.d/easy-install-after-reboot.sh

echo "Testing"
~/install-opencv-dlib-raspbian/test.sh

echo "Removing installation files..."
sudo rm -rf ~/install-opencv-dlib-raspbian

echo "DONE!