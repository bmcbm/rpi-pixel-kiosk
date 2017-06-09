#!/bin/sh

#if [ -e '/boot/alwayson' ]; then
#  xset -dpms
#  xset s off
#  xset s noblank
#fi

# clean up if like me you just yank the power or ssh in and poweroff
rm -rf ~/.config/chromium/Singleton*
# Launch chromium in kiosk mode, incognito with a reputable, well-designed url
chromium-browser --noerrdialogs --kiosk --incognito https://www.codesign2.co.uk
