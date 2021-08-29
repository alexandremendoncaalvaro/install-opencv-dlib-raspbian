#!/bin/bash
set -ex

OPENCV_VERSION=4.5.3

if [ ! -z "$1" ]
then
  OPENCV_VERSION=$1
fi

~/install-opencv-dlib-raspbian/download-opencv.sh $OPENCV_VERSION
~/install-opencv-dlib-raspbian/install-deps.sh
~/install-opencv-dlib-raspbian/build-opencv.sh $OPENCV_VERSION

cd ~/opencv/opencv-$OPENCV_VERSION/build

sudo make install