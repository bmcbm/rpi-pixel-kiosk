# rpi-pixel-kiosk
Using new Raspberry Pi Pixel to setup a fullscreen chromium kiosk

## Setup

1. Download Raspbian Jessie minimum version is September 2016 (PIXEL release).
2. Transfer image onto SD / micro-SD card as usual (probably a good idea to copy a wpa_supplicant.conf onto SD to setup wifi)
3. Boot the raspberry pi, check you have internet connectivity, then install prerequisites, if necessary.

 
  ```shell
  bash prerequisites.sh
  ```
 4. Use git to download the repo  

   ```shell
   git clone https://github.com/bmcbm/rpi-pixel-kiosk
   cd rpi-pixel-kiosk
   bash install.sh
   ```

## Things to note

1. We use systemD so that the browser restarts if it crashes (this also means we can kill the browser if it gets too hungry)
2. It is still possible if a keyboard is attached to navigate the system
3. This is an internal project, built for fun, shared in-case it helps, please contribute issues, PR's, make it awesome!
4. To change the URL, you want to edit [this line of this file](https://github.com/CODESIGN2/rpi-pixel-kiosk/blob/master/home/pi/.config/systemd/user/kiosk.service#L6).
5. To change from powersaving to no screen blanking create a file in the boot partition called `alwayson`. Alternatively you can use `sudo touch /boot/alwayson` or appropriate method to create a file at `/boot/alwayson` from the Pi
