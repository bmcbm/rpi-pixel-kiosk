#!/bin/bash
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y raspberrypi-ui-mods chromium-browser git
# Enable SSH server
sudo touch /boot/ssh
# Disable screensaver
sudo cp -af home/pi/.config/lxsession/LXDE-pi/autostart /etc/xdg/lxsession/LXDE-pi/autostart
sudo reboot
