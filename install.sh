#!/bin/bash
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y raspberrypi-ui-mods chromium-browser
cp -raf home /
systemctl --user enable kiosk
systemctl --user start kiosk
