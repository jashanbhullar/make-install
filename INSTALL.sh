#!/bin/bash

whiptail --title "Test Message Box" --msgbox "Create a message box with whiptail. Choose Ok to continue." 10 60

## Ask user to enter password
PASSWORD=$(whiptail --title "Test Password Box" --passwordbox "Enter your password :" 10 60 3>&1 1>&2 2>&3)
exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo "Your password is:" $PASSWORD
else
    echo "You chose Cancel."
fi

#
DISTROS=$(whiptail --title "Test Checklist Dialog" --checklist \
"Choose preferred Linux distros" 15 60 4 \
"debian" "Venerable Debian" ON \
"ubuntu" "Popular Ubuntu" OFF \
"centos" "Stable CentOS" ON \
"mint" "Rising Star Mint" OFF 3>&1 1>&2 2>&3)

exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo "Your favorite distros are:" $DISTROS
else
    echo "You chose Cancel."
fi

for((i=1; i<=100; i++)); do
    echo "$i"
    sleep 0.24
done | whiptail --backtitle "Demonstrating the gauge box" --title "Progress" --gauge "Processing ..." 6 70 0
