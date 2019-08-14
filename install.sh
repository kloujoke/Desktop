#!/bin/bash
echo "Installing linux steroids..."


apt -y update >/dev/null 2>&1
apt -y upgrade >/dev/null 2>&1
apt install htop neofetch i3 terminator python3 python3-pip rofi compton zsh feh ranger jq -y

echo "...more installs coming."


sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
