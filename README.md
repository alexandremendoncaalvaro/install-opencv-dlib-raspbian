# (NOW REALLY EASY!) OpenCV and Dlib install for Raspberry Pi

Simplify a lot the process of compiling and installing OpenCV and Dlib on Raspberry Pi 3 or above.

I tried some different versions (of Hardware and Software) with success, but did not cover all, so.. please feel free to PR or tell me.

## Requirements

* Raspberry Pi 3 or above
* Raspbian Buster or above
* Don´t lose any steps!

## About PIPENV

We´re going to use PIPENV.  
This great tool brings python virtual environment and package management to another level.  

To know more access: https://github.com/pypa/pipenv

After installation..  
To run any python file you will need to enable pipenv resources at the terminal.

To enable an installed pipenv enviroment, navigate to the project folder (with Pipfile) and run:

```bash
pipenv shell
```

To install new PIP libraries use pipenv instead of pip, like:

```bash
pipenv install numpy
```

# EASY INSTALL

1) We need to optimize the system to handle the installation properly.
**IMPORTANT:**  
Navigate to YOUR PYTHON PROJECT FOLDER in Raspbian Terminal, then run:

>If you don´t have a project folder, just create a new folder and navigate to this path

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/alexandremendoncaalvaro/install-opencv-dlib-raspbian/master/easy-install.sh)"
```
>In the end it will reboot to command line interface

2) Run:

```bash
~/install-opencv-dlib-raspbian/easy-install-after-reboot.sh
```
>In the end it will reboot to desktop interface

*Do exercises, take a shower, take a nap... It´ll take a while, actually hours...  
![pc](readme_images/homer.gif)  

## Testing OpenCV

in Raspbian Terminal:

```bash
~/install-opencv-dlib-raspbian/test-opencv.sh
```

>It will test for python 2 and 3 and will open a grayscale window for each test.

## Testing DLIB

in Raspbian Terminal:

```bash
~/install-opencv-dlib-raspbian/test-dlib.sh
```

then:

```bash
cd ~/install-opencv-dlib-raspbian && python ~/install-opencv-dlib-raspbian/test-dlib.py
```

# STEP BY STEP INSTALL

I recommend to use the [EASY INSTALL](#easy-install), but if you want to change OpenCV or DLIB version and etc.. use this one.

## Compile OpenCV on Raspbian
Run each line in Raspbian Terminal:

```bash
git clone https://github.com/alexandremendoncaalvaro/install-opencv-dlib-raspbian.git ~/install-opencv-dlib-raspbian && cd ~/install-opencv-dlib-raspbian
```

```bash
chmod +x ~/install-opencv-dlib-raspbian/*.sh
```

```bash
~/install-opencv-dlib-raspbian/swapfile.sh
```

## Preparing the system

```bash
sudo raspi-config
```
And then select Advanced Options => Expand filesystem:  
![Expand FS](https://www.pyimagesearch.com/wp-content/uploads/2018/08/install-opencv4-rpi-expandfs-768x580.jpg)

In raspi-config: Go back to the main screen and then select Boot Options => Desktop / CLI => Console Autologin:  
![cli login](https://www.pyimagesearch.com/wp-content/uploads/2017/05/raspbian_dlib_install_console_login.jpg)

In raspi-config: Go back to the main screen and select Advanced Options => Memory Split, where you’ll see the 64MB (or other value) prompt:  
![memory split](https://www.pyimagesearch.com/wp-content/uploads/2017/05/raspbian_dlib_install_memory_split.jpg)

Update this value to be 16MB and then exit.

Upon exiting, raspi-config will ask if you would like to reboot your system.

Go ahead and reboot, then we can move on with the rest of the install tutorial.

### After reboot

in Raspbian Terminal:

```bash
~/install-opencv-dlib-raspbian/install.sh
```
>It will install OpenCV 4.3.0, for another version just type the number at the end of the command, like:  
~/install-opencv-dlib-raspbian/install.sh 4.1.1

*Do exercises, take a shower, take a nap... It´ll take a while, actually hours...  
![pc](readme_images/homer.gif)  

## Install Dlib on Raspbian

IMPORTANT: Navigate to YOUR PYTHON PROJECT FOLDER in Raspbian Terminal and run:

```bash
pipenv install && pipenv shell
```

```bash
pipenv install 'numpy==1.18.4' 'dlib==19.19.0'
```

>For another version just change it, or simply don´t specify, like:
pipenv install numpy dlib

*Get some coffee... It´ll take a while  
![pc](readme_images/coffee.gif)  

```bash
~/install-opencv-dlib-raspbian/link-virtualenv.sh
```

## Finishing

in Raspbian Terminal:

```bash
~/install-opencv-dlib-raspbian/swapfile.sh 100
```
IMPORTANT: You can then reset your GPU/RAM split as well as update the boot options to boot into the desktop interface versus the command line.  
Use the process detailed in ["Preparing the system"](#preparing-the-system)


## Testing OpenCV

in Raspbian Terminal:

```bash
~/install-opencv-dlib-raspbian/test-opencv.sh
```

>It will test for python 2 and 3 and will open a grayscale window for each test.


## Testing DLIB

in Raspbian Terminal:

```bash
~/install-opencv-dlib-raspbian/test-dlib.sh
```

then:

```bash
python ~/install-opencv-dlib-raspbian/test-dlib.py
```

# References
https://www.pyimagesearch.com/2017/05/01/install-dlib-raspberry-pi/  
https://www.pyimagesearch.com/2018/01/22/install-dlib-easy-complete-guide/  
https://www.pyimagesearch.com/2019/09/16/install-opencv-4-on-raspberry-pi-4-and-raspbian-buster/  
https://www.pyimagesearch.com/2018/09/26/install-opencv-4-on-your-raspberry-pi/  
https://www.youtube.com/watch?v=uF4aDdxBm_M  
https://gist.github.com/chirag773/b4c94b5bb4b2e7fcac0d21680c5d4492  
https://gist.github.com/willprice/abe456f5f74aa95d7e0bb81d5a710b60  

# Are you a native English speaker?
No, I am not. If you find typos, grammar errors or whatever please feel free to PR or tell me.
