# linking vi to 
echo alias vi=\'/data/pnl/soft/neovim/nvim.appimage\' >> ~/.bashrc
echo alias vim=\'/bin/vim\' >> ~/.bashrc
source ~/.bashrc
if [ ! -d ~/.config/nvim ]
then
    mkdir ~/.config/nvim
fi

# configuration copy
if [ ! -e ~/.config/nvim/init.vim ]
then
    cp /data/pnl/soft/neovim/init.vim ~/.config/nvim/init.vim
fi


# Plug install
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


# Install modules in vim
/data/pnl/soft/neovim/nvim.appimage --headless +PlugInstall +qa
/data/pnl/soft/neovim/nvim.appimage +UpdateRemotePlugins +qa


echo Please source your ~/.bashrc and try running vi. You should be NVIM in the welcome message
