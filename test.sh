#!/bin/bash
set -ex

test ! -f ~/install-opencv-dlib-raspbian/lenna.jpg && wget "https://upload.wikimedia.org/wikipedia/en/7/7d/Lenna_%28test_image%29.png" -O ~/install-opencv-dlib-raspbian/lenna.jpg

python2 ~/install-opencv-dlib-raspbian/test.py ~/install-opencv-dlib-raspbian/lenna.jpg
python3 ~/install-opencv-dlib-raspbian/test.py ~/install-opencv-dlib-raspbian/lenna.jpg