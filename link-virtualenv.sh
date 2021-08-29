#!/bin/bash
set -ex

PYTHON_VERSION=`python -c 'import sys; version=sys.version_info[:3]; print("{0}.{1}".format(*version))'`
find="."
replace=""
CPYTHON_VERSION=`echo ${PYTHON_VERSION//$find/$replace}`

ln -s /usr/local/lib/python"${PYTHON_VERSION}"/dist-packages/cv2/python-"${PYTHON_VERSION}"/cv2.cpython-"${CPYTHON_VERSION}"m-arm-linux-gnueabihf.so "$(pipenv --venv)"/lib/python"${PYTHON_VERSION}"/site-packages