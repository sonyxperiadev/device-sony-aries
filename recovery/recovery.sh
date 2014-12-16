#!/bin/sh

export PATH="/sbin"

EVENT_NAME=`( cd /sys/class/input ; busybox_static grep  gpio-keys event*/device/name | busybox_static awk -F/ '{print $1}')`
EVENT_FILE="/dev/input/$EVENT_NAME"
EVENT_OUT="/dev/.recovery_do"
INIT_GOON="/dev/.recovery_aborted"

fancyass () {
echo "Executing"
	for x in `busybox_static seq 200 -5 0` ; do
		echo $x
		busybox_static echo $x > /sys/class/leds/led:rgb_red/brightness
		busybox_static echo $x > /sys/class/leds/led:rgb_green/brightness
		busybox_static echo $x > /sys/class/leds/led:rgb_blue/brightness
		busybox_static sleep 0.03
	done
}

# stolen from CM :-)
busybox_static cat $EVENT_FILE > $EVENT_OUT &

# play some silly LED animation
fancyass
busybox_static pkill -f "busybox_static cat $EVENT_FILE"

if [ -s $EVENT_OUT ] || busybox_static grep -q warmboot=0x77665502 /proc/cmdline ; then
	echo 10 > /sys/class/leds/led:rgb_blue/brightness
	echo 40 > /sys/class/leds/led:rgb_green/brightness
	
	cd /

	# User booted into recovery mode using a hw button
	# we are going to forcefully disable selinux now - may god forgive us.

	busybox_static setenforce 0

	busybox_static mount -o remount,rw /
	cd recovery
	busybox_static mkdir tmp proc sys
	busybox_static mount --bind /dev /recovery/dev
	busybox_static umount /proc
	busybox_static umount /sys
	busybox_static cpio -i < /recovery/ramdisk-recovery.cpio
	busybox_static chroot /recovery /init

	# notreached
	busybox_static sleep 99999
fi

busybox_static touch $INIT_GOON

