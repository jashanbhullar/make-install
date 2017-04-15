#!/bin/bash
whiptail --title "Make-Install" --checklist --separate-output \
"Software List:(Press 'spacebar' to select the checkbox)" 15 60 7 \
"Atom" "Hackable text editor" OFF \
"Chromium" "Webbrowser" OFF 2>hashfile

exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo  ne 'Adding ppa for :' $SOFTWARE
else
    echo -ne 'Terminating....                                                 \r'
    sleep 1
    echo -ne 'Terminating........                                             \r'
    sleep 1
    echo -ne 'Terminating............                                         \r'
    sleep 1
    echo -ne 'Terminating................                                     \r'
    sleep 1
    echo -ne 'Terminating................100%                                 \r'
    echo -ne '\n'
fi

while read choice
do
	case $choice in
		Atom) sudo add-apt-repository ppa:webupd8team/atom -y
		;;
		Chromium) sudo add-apt-repository ppa:saiarcot895/chromium-dev -y
		;;
		*)
		;;
	esac
done < hashfile
