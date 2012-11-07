#!/bin/sh
# .xinitrc file

xscreensaver -no-splash &
nm-applet --sm-disable &
mate-power-manager &

# fire up xcompgr so that composting will actually work
xcompmgr -c &

# set desktop wallpaper
# awsetbg /home/david/Dropbox/Pictures/wallpapers/field_sun_glow.jpg

# start window manager
exec xmonad
