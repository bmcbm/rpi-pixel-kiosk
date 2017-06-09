#!/bin/bash
sudo apt-get install -y chromium-browser
cp -raf home /
systemctl --user enable kiosk
systemctl --user start kiosk
