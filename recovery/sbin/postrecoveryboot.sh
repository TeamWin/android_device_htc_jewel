#!/sbin/busybox sh

echo "adb" > /sys/class/android_usb/android0/functions
echo "1" > /sys/class/android_usb/f_adb/on