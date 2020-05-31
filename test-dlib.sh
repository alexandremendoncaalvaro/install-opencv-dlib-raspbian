#!/bin/bash
set -ex

echo "[INFO] Getting sample image.."
test ! -f ~/install-opencv-dlib-raspbian/lenna.jpg && wget "https://upload.wikimedia.org/wikipedia/en/7/7d/Lenna_%28test_image%29.png" -O ~/install-opencv-dlib-raspbian/lenna.jpg

echo "[INFO] Getting python project path.."
PROJECT_PATH=$(<~/install-opencv-dlib-raspbian/current-dir.txt)

cd $PROJECT_PATH

echo "[INFO] Shell virtual enviroment.."
pipenv shell

echo "[INFO] DLIB test!"
python ~/install-opencv-dlib-raspbian/test-dlib.py