#!/bin/sh

dbus-daemon --system

avahi-daemon -D

exec homebridge --user-storage-path /homebridge