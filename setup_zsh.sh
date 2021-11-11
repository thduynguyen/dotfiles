#!/bin/bash -x
if [ $(id -u) = 0 ]; then
   echo "Should not run as root."
   exit 1
fi

sudo apt install zsh curl

# After installed, shell will switch to zsh. Press Ctrl-D to exit and continue.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

rm ~/.zshrc
ln -sr ./zshrc ../../.zshrc
cp *.zsh-theme ~/.oh-my-zsh/themes/

# Install custom plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


sudo chsh -s $(which zsh)
