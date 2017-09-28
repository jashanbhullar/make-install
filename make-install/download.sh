#!/bin/bash
whiptail --title "Make-Install" --checklist --separate-output \
"Software List:(Press 'spacebar' to select the checkbox)" 15 60 7 \
"Atom" "Hackable text editor" OFF \
"Audacity" "audio editor" OFF \
"qbittorrent" "client - BitTorrent" OFF \
"Blender" "3D creation suite" OFF \
"Brackets" "Editor for Web-Design" OFF \
"Chromium" "Chrome's Alternative" OFF \
"Codeblocks" "IDE for C/C++" OFF \
"Darktable" "photoworkflow software" OFF \
"Evolution" "groupware application" OFF \
"Geary" "Email Client" OFF \
"Gimp" "graphics editor" OFF \
"Neofetch" "CLI Information tool" OFF \
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

    while read choice
    do
	case $choice in
		Atom) sudo add-apt-repository ppa:webupd8team/atom -y
   		echo -ne '....                                                 \r'
		;;
		Chromium) sudo add-apt-repository ppa:saiarcot895/chromium-dev -y
		echo -ne '........                                             \r'
		;;
        Audacity) sudo add-apt-repository ppa:ubuntuhandbook1/audacity -y
		echo -ne '............                                         \r'
        ;;
        qbittorrent) sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
		echo -ne '................                                     \r'
    	;;
        Blender) sudo add-apt-repository ppa:thomas-schiex/blender -y
		echo -ne '....................                                 \r'
        ;;
        Brackets) sudo add-apt-repository ppa:webupd8team/brackets -y
		echo -ne '........................                             \r'
        ;;
        Codeblocks) sudo add-apt-repository ppa:mail6543210/codeblocks -y
		echo -ne '.............................                        \r'
        ;;
        Darktable) sudo add-apt-repository ppa:pmjdebruijn/darktable-1-6-testing -y
		echo -ne '.................................                    \r'
        ;;
        Evolution) sudo add-apt-repository ppa:julenlanda/evolution -y
		echo -ne '.....................................                \r'
        ;;
        Geary) sudo add-apt-repository ppa:geary-team/releases -y
		echo -ne '.......................................              \r'
        ;;
        Gimp) sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
		echo -ne '.........................................            \r'
        ;;
        Neofetch) sudo add-apt-repository ppa:dawidd0811/neofetch -y
		echo -ne '............................................         \r'
        ;;
        Skype) sudo add-apt-repository ppa:andykimpe/skype -y
		echo -ne '..............................................       \r'
        ;;
        Steamcmd) sudo add-apt-repository ppa:ev1l0rd/steamcmddl -y
		echo -ne '...............................................       \r'
        ;;
        Sublime-text) sudo add-apt-repository ppa:webupd8team/sublime-text-2 -y
		echo -ne '................................................      \r'
        ;;
        Telegram) sudo add-apt-repository ppa:atareao/telegram -y
		echo -ne '.................................................     \r'
        ;;
        Tomahawk) sudo add-apt-repository ppa:tomahawk/ppa -y
		echo -ne '..................................................    \r'
        ;;
        Tor-browser) sudo add-apt-repository ppa:webupd8team/tor-browser -y
		echo -ne '...................................................   \r'
        ;;
        Unity-tweak-tool) sudo add-apt-repository ppa:tribaal/unity-tweak-tool -y
		echo -ne '..................................................... \r'
        ;;
        Uget) sudo add-apt-repository ppa:plushuang-tw/uget-stable -y
		echo -ne '..................................................... \r'
        ;;
        VLC) sudo add-apt-repository ppa:n-muench/vlc2 -y
		echo -ne '......................................................\r'
        ;;
        *)
        ;;
    	esac
    done < hashfile

    sudo apt update

    while read choice
    do
	case $choice in
		Atom) sudo apt install atom -y
		echo -ne '.....                                                 \r'
		;;
		Chromium) sudo apt install chromium-browser -y
		echo -ne '.......                                               \r'
		;;
        Audacity) sudo apt install audacity -y
		echo -ne '...........                                           \r'
        ;;
        qbittorrent) sudo apt install qbittorrent -y
		echo -ne '..............                                        \r'
   		;;
        Blender) sudo apt install blender -y
		echo -ne '.................                                     \r'
        ;;
        Brackets) sudo apt install brackets -y
		echo -ne '.....................                                 \r'
        ;;
        Codeblocks) sudo apt install codeblocks -y
		echo -ne '.........................                             \r'
        ;;
        Darktable) sudo apt install darktable -y
		echo -ne '............................                          \r'
        ;;
        Evolution) sudo apt install evolution -y
		echo -ne '...............................                       \r'
        ;;
        Geary) sudo apt install geary -y
		echo -ne '.................................                     \r'
        ;;
        Gimp) sudo apt install gimp -y
		echo -ne '....................................                  \r'
        ;;
        Neofetch) sudo apt install neofetch -y
		echo -ne '.......................................               \r'
        ;;
        Skype) sudo apt install skype -y
		echo -ne '.........................................             \r'
        ;;
        Steamcmd) sudo apt install steamcmddl -y
		echo -ne '...........................................           \r'
        ;;
        Sublime-text) sudo apt install sublime-text -y
		echo -ne '..............................................        \r'
        ;;
        Telegram) sudo apt update telegram -y
		echo -ne '................................................      \r'
        ;;
        Tomahawk) sudo apt install tomahawk -y
		echo -ne '..................................................    \r'
        ;;
        Tor-browser) sudo apt install tor-browser  -y
		echo -ne '...................................................   \r'
        ;;
        Unity-tweak-tool) sudo apt install unity-tweak-tool -y
		echo -ne '....................................................  \r'
        ;;
        Uget) sudo apt install uget -y
		echo -ne '..................................................... \r'
        ;;
        VLC) sudo apt install vlc -y
		echo -ne '......................................................\r'
        ;;
        *)
        ;;
    	esac
    done < hashfile

else
    echo -ne 'Terminating....                                                 \r'
    sleep 1
    echo -ne 'Terminating.........................                            \r'
    sleep 1
    echo -ne 'Terminating................................................100% \r'
    echo -ne '\n'
fi

rm hashfile
