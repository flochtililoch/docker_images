#!/bin/bash

/etc/init.d/dbus start
dbus-daemon --system --nopidfile
avahi-daemon -D
python /home-assistant-pi/home-assistant-pi.py