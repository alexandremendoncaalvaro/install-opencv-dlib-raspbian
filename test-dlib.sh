#!/bin/bash
set -ex

echo "[INFO] Getting sample image.."
test ! -f ~/install-opencv-dlib-raspbian/lenna.jpg && wget "https://upload.wikimedia.org/wikipedia/en/7/7d/Lenna_%28test_image%29.png" -O ~/install-opencv-dlib-raspbian/lenna.jpg

echo "[INFO] Getting detector model dataset.."
test ! -f ~/install-opencv-dlib-raspbian/shape_predictor_68_face_landmarks.dat && wget "http://dlib.net/files/shape_predictor_68_face_landmarks.dat.bz2" -O ~/install-opencv-dlib-raspbian/shape_predictor_68_face_landmarks.dat.bz2 && bzip2 -d ~/install-opencv-dlib-raspbian/shape_predictor_68_face_landmarks.dat.bz2
sudo rm -f ~/install-opencv-dlib-raspbian/shape_predictor_68_face_landmarks.dat.bz2

echo "[INFO] Getting python project path.."
PROJECT_PATH=$(<~/install-opencv-dlib-raspbian/current-dir.txt)

cd $PROJECT_PATH

echo "[INFO] Prepare PIPENV.."
pipenv shell
pipenv install imutils

echo "[INFO] DLIB test!"
python ~/install-opencv-dlib-raspbian/test-dlib.py
