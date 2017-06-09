#!/bin/bash
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y raspberrypi-ui-mods chromium-browser git
# Ensure screen is not going blank.
sudo touch /boot/alwayson
# Enable SSH server
sudo touch /boot/ssh
# Disable screensaver
sudo sed -i -e 's/@xscreensaver/#@xscreensaver/' /etc/xdg/lxsession/LXDE-pi/autostart .config/lxsession/LXDE-pi/autostart
sudo reboot
