# Raspberry-Pi-Auto-Presenter
Allows a Raspberry Pi to automatically present a powerpoint from a USB drive. Useful for TV presentations. Note that only the .odp file format works. LibreOffice uses this format by default, and MS PowerPoint can export to this format under file>export

# Usage
You will need a USB drive named as specified in the setup. Simply plug the drive into the Raspberry Pi, and the single presentation, called `presentation.odp` will be presented.<br>
Once the drive is plugged in, the following will happen:
1. `presentation.odp` will be copied to the desktop
2. The drive will be unmounted
3. LibreOffice will present `presentation.odp`
4. `presentation.odp` will be deleted from the desktop (once the presentation finishes)

# Setup
1. If your Raspberry Pi doesn't have Raspbian OS installed, follow [these](https://www.raspberrypi.org/documentation/installation/installing-images/) instructions
2. Copy `autopresent.sh` to `/home/pi`
3. Edit line 7 of `autopresent.sh` to read `sudo cp /media/pi/NAMEOFUSBDRIVE/presentation.pptx Desktop/ && break` where "NAMEOFUSBDRIVE" is the name of whatever drive you want to use.
4. In a terminal, run `sudo nano .bashrc`
5. Add a new line to the bottom: `./autoprent.sh`
6. In a terminal, run `sudo nano .config/lxsession/LXDE-pi/autostart`
7. Add a new line to the bottom: `@lxterminal`
