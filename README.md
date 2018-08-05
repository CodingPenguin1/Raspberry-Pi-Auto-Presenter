# Raspberry-Pi-Auto-Presenter
Allows a Raspberry Pi to automatically present a ppt from a USB drive. Useful for TV presentations.

# Usage
You will need a USB drive named as specified in the setup. Simply plug the drive into the Raspberry Pi, and the single presentation, called `presentation.pptx` will be presented.<br>
Once the drive is plugged in, the following will happen:
1. `presentation.pptx` will be copied to the desktop
2. The drive will be unmounted
3. LibreOffice will present `presentation.pptx`
4. `presentation.pptx` will be deleted from the desktop (once the presentation finishes)

# Setup
1. Copy `autopresenterRunner.desktop` to `/home/pi/.local/share/applications`
2. Copy `autopresent.sh` to `/home/pi`
3. Edit line 8 of `autopresent.sh` to read `cp /media/pi/NAMEOFUSBDRIVE/presentation.pptx Desktop/ &&` where "NAMEOFUSBDRIVE" is the name of whatever drive you want to use. 
