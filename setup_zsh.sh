apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
rm ~/.zshrc
ln -sr ./zshrc ../../.zshrc
cp *.zsh-theme ~/.oh-my-zsh/themes/
