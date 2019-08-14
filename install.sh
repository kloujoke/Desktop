#!/bin/bash
echo "Installing linux steroids..."


apt -y update >/dev/null 2>&1
apt -y upgrade >/dev/null 2>&1
apt install htop neofetch i3 terminator nm-applet python3 python3-pip rofi compton zsh feh ranger jq libxcb-xrm-dev libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake -y

echo "...more installs coming."


sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

echo "i3-gaps installation halted..."
#cd tmp
#git clone https://www.github.com/Airblader/i3 i3-gaps
#cd i3-gaps
#git checkout gaps && git pull
#autoreconf --force --install
#rm -rf build
#mkdir build
#cd build
#../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
#make
#sudo make install
