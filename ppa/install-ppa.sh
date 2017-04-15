# Ask for Software Selection
SOFTWARE=$(whiptail --title "Make-Install" --checklist \
"Software List:(Press 'spacebar' to select the checkbox)" 15 60 7 \
"Atom" "Hackable text editor" OFF \
"Chromium" "Webbrowser" OFF \
"centos" "Stable CentOS" OFF \
"ubuntu" "Popular Ubuntu" OFF \
"centos" "Stable CentOS" OFF \
"ubuntu" "Popular Ubuntu" OFF \
"centos" "Stable CentOS" OFF \
"ubuntu" "Popular Ubuntu" OFF \
"centos" "Stable CentOS" OFF \
"mint" "Rising Star Mint" OFF 3>&1 1>&2 2>&3)


exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo  ne 'Installing' $SOFTWARE
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

sudo apt-get install atom -y
sudo apt-get install audacity -y
sudo apt-get install qbittorrent -y
sudo apt-get install blender -y
sudo apt-get install brackets -y
sudo apt-get install chrome
sudo apt-get install chromium-browser -y
sudo apt-get install codeblocks -y
sudo apt-get install darktable -y
sudo apt-get install evolution -y
sudo apt-get install geary -y
sudo apt-get install gimp -y
sudo apt-get install minitube -y
sudo apt-get install neofetch -y
sudo apt-get install opera
sudo apt-get install skype -y
sudo apt-get install steamcmddl -y
sudo apt-get install sublime-text -y
sudo apt-get update telegram -y
sudo apt-get install tomahawk -y
sudo apt-get install tor-browser  -y
sudo apt-get install unity-tweak-tool -y
sudo apt-get install uget -y
sudo apt-get install vlc -y
