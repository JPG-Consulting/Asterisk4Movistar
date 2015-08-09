#!/bin/sh
# Part of setup-asterisk
#
# See LICENSE file for copyright and license details

# Should be installed to /etc/profile.d/setup-asterisk.sh to force setup-asterisk
# to run at initial login

# You may also want to set automatic login in /etc/inittab on tty1 by adding a
# line such as:
# 1:2345:respawn:/bin/login -f root tty1 </dev/tty1 >/dev/tty1 2>&1 # RPICFG_TO_DISABLE

if [ $(id -u) -ne 0 ]; then
  printf "\nNOTICE: the software on this Raspberry Pi has not been fully configured. Please run 'sudo setup-asterisk'\n\n"
else
  setup-asterisk
  exec login -f pi
fi
