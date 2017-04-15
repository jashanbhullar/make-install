#!/bin/bash
install_pps = $(ppa_ubuntu.sh)
exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo "PPA added sucessfully"
else
    echo "Some Error"
fi

# Update the system repo list
sudo apt update
