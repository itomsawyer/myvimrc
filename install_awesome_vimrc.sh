cd ~/.vim_runtime

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim_runtime/bundle/vundle

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/vundle-config.vim
source ~/.vim_runtime/vimrcs/basic.vim

try
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
source ~/.vim_runtime/vimrcs/custom.vim
catch
endtry' > ~/.vimrc

echo "Install neovim..."
pip3 install neovim

echo "Install rust"

echo 'export RUSTUP_UPDATE_ROOT=https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup' >> ~/.bash_profile
echo 'export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup' >> ~/.bash_profile
export RUSTUP_UPDATE_ROOT=https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup
export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup component add rust-analyzer

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
