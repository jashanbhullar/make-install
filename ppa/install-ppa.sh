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

# Atom-hackable text editor
sudo apt-get install atom -y

# chromium-browser
sudo apt-get install chromium-browser -y

# geary-team
sudo apt-get install geary -y

# Minitube
sudo apt-get install minitube -y

# Neofetch
sudo apt-get install neofetch -y

# Skype
sudo apt-get install skype -y

# Tomhack
sudo apt-get install tomahawk -y

# Unity-tweak-tool
sudo apt-get install unity-tweak-tool -y

# vlc
sudo apt-get install vlc -y
