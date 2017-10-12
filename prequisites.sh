#!/bin/bash
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y raspberrypi-ui-mods chromium-browser git
# Enable SSH server
sudo touch /boot/ssh
# Disable screensaver
sudo cp -af home/pi/.config/lxsession/LXDE-pi/autostart /etc/xdg/lxsession/LXDE-pi/autostart
# Disable overscan to use full screen real estate
grep -qE "^disable_overscan=" /tmp/cbmtest || echo -e "\n# rpi-pixel-koisk - disable overscan\ndisable_overscan=1" | sudo tee -a /boot/config.txt
sudo reboot
