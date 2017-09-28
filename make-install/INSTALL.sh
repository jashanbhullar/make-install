#!/bin/bash
# This file is part of make-install
# make-install is an open source project developed by Abhishek Verma
# Github : https://github.com/hell-sing/make-install

# Show Welcome message.
whiptail --title "Make-Install" --msgbox "Welcome to Make-Install, a set of command line tools that \
let you easily install latest version of popular software \
on your  Linux system, installing it alongside all of the \
required dependencies and  make life simpler for newbies." 10 61

# Granting root access to Make-Install
pass=$(whiptail --backtitle "" --title "Authentication required" --passwordbox "Make-Install \
requires administrative privilege. Please authenticate to begin the \
installation.\n\n[sudo] Password for user $USER:" 10 61 3>&2 2>&1 1>&3-)

if [ -n "$pass" ]; then
   echo $pass | sudo -S su
   exitstatus=$?
   if [ $exitstatus != 0 ]; then
       echo "~ Authentication Failed"
       exit
   else
       echo "~ Authentication Granted [root] $USER"
   fi
else
   exit
fi

# Add ppa to the system and install
exec ./download.sh
rm autogen.#!/bin/sh
