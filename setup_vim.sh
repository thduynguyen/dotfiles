#curl -L https://bit.ly/janus-bootstrap | bash
ln -sr vimrc.before ../../.vimrc.before
ln -sr vimrc.after ../../.vimrc.after
cd janus
git submodule init
git submodule update
cd ..
ln -sr janus ../../.janus

mkdir ~/.config/nvim
ln -s /home/duynguyen/.vimrc /home/duynguyen/.config/nvim/init.vim

pip install neovim
# execute command :UpdateRemotePlugins and restart neovim
