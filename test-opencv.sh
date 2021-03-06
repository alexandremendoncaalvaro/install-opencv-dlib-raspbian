#!/bin/bash
set -ex

echo "[INFO] Getting sample image.."
test ! -f ~/install-opencv-dlib-raspbian/lenna.jpg && wget "https://upload.wikimedia.org/wikipedia/en/7/7d/Lenna_%28test_image%29.png" -O ~/install-opencv-dlib-raspbian/lenna.jpg

echo "[INFO] Python 2 test!"
python2 ~/install-opencv-dlib-raspbian/test-opencv.py ~/install-opencv-dlib-raspbian/lenna.jpg

echo "[INFO] Python 3 test!"
python3 ~/install-opencv-dlib-raspbian/test-opencv.py ~/install-opencv-dlib-raspbian/lenna.jpg
