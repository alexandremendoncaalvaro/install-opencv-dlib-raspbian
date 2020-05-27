# Install

## Requirements
* Raspberry Pi 3 or above
* Raspbian Buster or above
* Don´t loose any step!

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

In raspi-config: Go back to the main screen and select Advanced Options => Memory Split, where you’ll see the 64MB prompt:  
![memory split](https://www.pyimagesearch.com/wp-content/uploads/2017/05/raspbian_dlib_install_memory_split.jpg)

Update this value to be 16MB and then exit.

Upon exiting, raspi-config will ask if you would like to reboot your system.

Go ahead and reboot, then we can move on with the rest of the install tutorial.

### After reboot

in Raspbian Terminal:

```bash
~/install-opencv-dlib-raspbian/install.sh
```
>It will install OpenCV 4.1.1, for another version just type the number at the end of the command, like:  
~/install-opencv-dlib-raspbian/install.sh 4.1.1

*Get some coffee... It´ll take a while, actually hours...

## Install Dlib on Raspbian

IMPORTANT: Navigate to YOUR PROJECT FOLDER in Raspbian Terminal and run:

```bash
pipenv install && pipenv shell
```

```bash
pipenv install 'numpy==1.18.4' 'dlib==19.19.0'
```

>For another versions just change it, or simply don´t specify, like: 
pipenv install numpy dlib

```bash
~/install-opencv-dlib-raspbian/link-virtualenv.sh
```

## Finishing

in Raspbian Terminal:

```bash
~/install-opencv-dlib-raspbian/swapfile.sh 100
```
You can then reset your GPU/RAM split to 64MB as well as update the boot options to boot into the desktop interface versus the command line.

# References
https://www.pyimagesearch.com/2017/05/01/install-dlib-raspberry-pi/  
https://www.pyimagesearch.com/2018/01/22/install-dlib-easy-complete-guide/  
https://www.pyimagesearch.com/2019/09/16/install-opencv-4-on-raspberry-pi-4-and-raspbian-buster/  
https://www.pyimagesearch.com/2018/09/26/install-opencv-4-on-your-raspberry-pi/  
https://www.youtube.com/watch?v=uF4aDdxBm_M  
https://gist.github.com/chirag773/b4c94b5bb4b2e7fcac0d21680c5d4492  
https://gist.github.com/willprice/abe456f5f74aa95d7e0bb81d5a710b60  

# Are you a native english speaker?
No, I am not. If you find typos, grammar errors or whatever please feel free to PR or tell me.