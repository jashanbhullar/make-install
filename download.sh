#!/bin/bash
whiptail --title "Make-Install" --checklist --separate-output \
"Software List:(Press 'spacebar' to select the checkbox)" 15 60 7 \
"Atom" "Hackable text editor" OFF \
"Chromium" "Webbrowser" OFF \
"Audacity" "audio editor" OFF \
"qbittorrent" "client - BitTorrent" OFF \
"Blender" "3D creation suite" OFF \
"Brackets" "Editor for Web-Design" OFF \
"Chrome" "Web Browser" OFF \
"Chromium" "Chrome's Alternative" OFF \
"Codeblocks" "IDE for C/C++" OFF \
"Darktable" "photoworkflow software" OFF \
"Evolution" "groupware application" OFF \
"Geary" "Email Client" OFF \
"Gimp" "graphics editor" OFF \
"Minitube" "YouTube Video Player" OFF \
"Neofetch" "CLI Information tool" OFF \
"Opera" "Web Browser" OFF \
"Skype" "messaging app" OFF \
"Steamcmd" "command-line" OFF \
"Sublime-text" "source code editor" OFF \
"Telegram" "messaging app" OFF \
"Tomahawk" "free music player" OFF \
"Tor-browser" "Web Browser" OFF \
"Unity-tweak-tool" "settings manager" OFF \
"Uget" " GTK+ download manager" OFF \
"VLC" "Portable Media Player" OFF 2>hashfile

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
    Audacity) sudo add-apt-repository ppa:ubuntuhandbook1/audacity -y
    ;;
    qbittorrent) sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
		;;
    Blender) sudo add-apt-repository ppa:thomas-schiex/blender -y
    ;;
    Brackets) sudo add-apt-repository ppa:webupd8team/brackets -y
    ;;
    Chrome)
    ;;
    Codeblocks) sudo add-apt-repository ppa:mail6543210/codeblocks -y
    ;;
    Darktable) sudo add-apt-repository ppa:pmjdebruijn/darktable-1-6-testing -y
    ;;
    Evolution) sudo add-apt-repository ppa:julenlanda/evolution -y
    ;;
    Geary) sudo add-apt-repository ppa:geary-team/releases -y
    ;;
    Gimp) sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
    ;;
    Minitube)
    ;;
    Neofetch) sudo add-apt-repository ppa:dawidd0811/neofetch -y
    ;;
    Opera)
    ;;
    Skype) sudo add-apt-repository ppa:andykimpe/skype -y
    ;;
    Steamcmd) sudo add-apt-repository ppa:ev1l0rd/steamcmddl -y
    ;;
    Sublime-text) sudo add-apt-repository ppa:webupd8team/sublime-text-2 -y
    ;;
    Telegram) sudo add-apt-repository ppa:atareao/telegram -y
    ;;
    Tomahawk) sudo add-apt-repository ppa:tomahawk/ppa -y
    ;;
    Tor-browser) sudo add-apt-repository ppa:webupd8team/tor-browser -y
    ;;
    Unity-tweak-tool) sudo add-apt-repository ppa:tribaal/unity-tweak-tool -y
    ;;
    Uget) sudo add-apt-repository ppa:plushuang-tw/uget-stable -y
    ;;
    VLC) sudo add-apt-repository ppa:n-muench/vlc2 -y
    ;;
    *)
    ;;
	esac
done < hashfile

sudo apt update

while read choice
do
	case $choice in
		Atom) sudo apt-get install atom -y
		;;
		Chromium) sudo apt-get install chromium-browser -y
		;;
    Audacity) sudo apt-get install audacity -y
    ;;
    qbittorrent) sudo apt-get install qbittorrent -y
		;;
    Blender) sudo apt-get install blender -y
    ;;
    Brackets) sudo apt-get install brackets -y
    ;;
    Chrome) sudo apt-get install chrome
    ;;
    Codeblocks) sudo apt-get install codeblocks -y
    ;;
    Darktable) sudo apt-get install darktable -y
    ;;
    Evolution) sudo apt-get install evolution -y
    ;;
    Geary) sudo apt-get install geary -y
    ;;
    Gimp) sudo apt-get install gimp -y
    ;;
    Minitube) sudo apt-get install minitube -y
    ;;
    Neofetch) sudo apt-get install neofetch -y
    ;;
    Opera) sudo apt-get install opera
    ;;
    Skype) sudo apt-get install skype -y
    ;;
    Steamcmd) sudo apt-get install steamcmddl -y
    ;;
    Sublime-text) sudo apt-get install sublime-text -y
    ;;
    Telegram) sudo apt-get update telegram -y
    ;;
    Tomahawk) sudo apt-get install tomahawk -y
    ;;
    Tor-browser) sudo apt-get install tor-browser  -y
    ;;
    Unity-tweak-tool) sudo apt-get install unity-tweak-tool -y
    ;;
    Uget) sudo apt-get install uget -y
    ;;
    VLC) sudo apt-get install vlc -y
    ;;
    *)
    ;;
	esac
done < hashfile
