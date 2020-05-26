#!/bin/bash
set -ex

SWAPSIZE=1024

if [ ! -z "$1" ]
then
  SWAPSIZE=$1
fi

sudo dphys-swapfile swapoff
sudo sed -i 's:CONF_SWAPSIZE=.*:CONF_SWAPSIZE=${SWAPSIZE}:g' /etc/dphys-swapfile

sudo reboot