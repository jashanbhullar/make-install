#!/bin/bash
sudo add-apt-repository ppa:webupd8team/atom -y
sudo add-apt-repository ppa:ubuntuhandbook1/audacity -y
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
sudo add-apt-repository ppa:thomas-schiex/blender -y
sudo add-apt-repository ppa:webupd8team/brackets -y
sudo add-apt-repository ppa:saiarcot895/chromium-dev -y
sudo add-apt-repository ppa:mail6543210/codeblocks -y
sudo add-apt-repository ppa:pmjdebruijn/darktable-1-6-testing -y
sudo add-apt-repository ppa:julenlanda/evolution -y
sudo add-apt-repository ppa:geary-team/releases -y
sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
sudo add-apt-repository ppa:nilarimogard/webupd8 -y
sudo add-apt-repository ppa:dawidd0811/neofetch -y
sudo add-apt-repository ppa:andykimpe/skype -y
sudo add-apt-repository ppa:ev1l0rd/steamcmddl -y
sudo add-apt-repository ppa:webupd8team/sublime-text-2 -y
sudo add-apt-repository ppa:atareao/telegram -y
sudo add-apt-repository ppa:tomahawk/ppa -y
sudo add-apt-repository ppa:webupd8team/tor-browser -y
sudo add-apt-repository ppa:tribaal/unity-tweak-tool -y
sudo add-apt-repository ppa:plushuang-tw/uget-stable -y
sudo add-apt-repository ppa:n-muench/vlc2 -y

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

wget -O - http://deb.opera.com/archive.key | sudo apt-key add -
sudo sh -c 'echo "deb http://deb.opera.com/opera-stable/ stable non-free" >> /etc/apt/sources.list.d/opera.list'
