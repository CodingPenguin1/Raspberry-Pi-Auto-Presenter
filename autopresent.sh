#! /bin/sh

sudo rm /home/pi/Desktop/presentation.odp

while :
do
	sudo cp /media/pi/NAMEOFUSBDRIVE/presentation.odp Desktop/ && break
done

sleep 5 &&
echo "unmounting"
sudo umount /dev/sda1 &&
echo "success"
echo "showing"
/usr/bin/libreoffice --show /home/pi/Desktop/presentation.odp &&
echo "success"
