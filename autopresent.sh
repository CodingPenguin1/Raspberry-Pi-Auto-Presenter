#! /bin/sh
# /etc/init.d/libreoffice

while :
do
	echo "no device found"
	{
		cp /media/pi/NAMEOFUSBDRIVE/presentation.pptx Desktop/ &&
		sudo umount /dev/sda1 &&
		libreoffice --show Desktop/presentation.pptx &&
		rm Desktop/presentation.pptx
	} || {
		pass
	}
done
