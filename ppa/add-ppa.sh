#!/bin/bash
pass < $(hash)
if [ -n "$pass" ]; then
   echo $pass | sudo -S su
   exitstatus=$?
   if [ $exitstatus != 0 ]; then
       echo "Authentication Failed"
       exit
   fi
else
   exit
fi
# Atom-hackable text editor
add-apt-repository ppa:webupd8team/atom -y

# chromium-browser
add-apt-repository ppa:saiarcot895/chromium-dev -y

# geary-team
add-apt-repository ppa:geary-team/releases -y

# Minitube
add-apt-repository ppa:nilarimogard/webupd8 -y

# Neofetch
add-apt-repository ppa:dawidd0811/neofetch -y

# Skype
add-apt-repository ppa:andykimpe/skype -y

# Tomhack
add-apt-repository ppa:tomahawk/ppa -y

# Unity-tweak-tool
add-apt-repository ppa:tribaal/unity-tweak-tool -y

# vlc
add-apt-repository ppa:n-muench/vlc2 -y
