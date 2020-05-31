#! /bin/sh

### BEGIN INIT INFO
# Provides:          opencv-boot-install.sh
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
### END INIT INFO

case "$1" in
  start)
    echo "Starting OpenCV Install"
    ~/install-opencv-dlib-raspbian/easy-install-after-reboot.sh
    ;;
  stop)
    echo "Stopping OpenCV Install"
    pkill -f ~/install-opencv-dlib-raspbian/easy-install-after-reboot.sh
    ;;
  *)
    echo "Usage: /etc/init.d/opencv-boot-install.sh {start|stop}"
    exit 1
    ;;
esac

exit 0