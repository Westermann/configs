# Introduction
echo "################################################################################"
echo "################################################################################"
echo "################################################################################"
echo "###                                                                          ###"
echo "###   Hello, welcome to the world of Westermann.                             ###"
echo "###   This remote script will now install my cool configs on your system.    ###"
echo "###                                                                          ###"
echo "###   =====================================================================  ###"


# ZSH

echo "###                                                                          ###"
echo "###  Install Oh-my-zsh                                                       ###"
echo "###                                                                          ###"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "###                                                                          ###"
echo "###  Overwriting zshrc file                                                  ###"
echo "###                                                                          ###"
mv ~/.zshrc ~/.zshrc.bak
curl https://raw.githubusercontent.com/Westermann/configs/master/zshrc >> ~/.zshrc


# VIM

echo "###                                                                          ###"
echo "###  Overwriting vimrc file                                                  ###"
echo "###                                                                          ###"
mv ~/.vimrc ~/.vimrc.bak
curl https://raw.githubusercontent.com/Westermann/configs/master/vimrc >> ~/.vimrc

echo "###                                                                          ###"
echo "###  Installing pathogen for vim                                             ###"
echo "###                                                                          ###"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "###                                                                          ###"
echo "###  Installing syntactic syntax checker                                     ###"
echo "###                                                                          ###"
cd ~/.vim/bundle && \
  git clone --depth=1 https://github.com/scrooloose/syntastic.git

echo "###                                                                          ###"
echo "###  Installing Nvim-R                                                       ###"
echo "###                                                                          ###"
cd ~/.vim/bundle && \
  git clone --depth=1 https://github.com/jalvesaq/Nvim-R.git

echo "###                                                                          ###"
echo "###  Installing Python Indent                                                ###"
echo "###                                                                          ###"
cd ~/.vim/bundle && \
  git clone --depth=1 https://github.com/vim-scripts/indentpython.vim

echo "###                                                                          ###"
echo "###  Installing NERDTree                                                     ###"
echo "###                                                                          ###"
cd ~/.vim/bundle && \
  git clone --depth=1 https://github.com/scrooloose/nerdtree.git


# TMUX

echo "###                                                                          ###"
echo "###  Overwriting tmux.conf file                                              ###"
echo "###                                                                          ###"
mv ~/.tmux.conf ~/.tmux.conf.bak
curl https://raw.githubusercontent.com/Westermann/configs/master/tmux.conf >> ~/.tmux.conf


echo "###                                                                          ###"
echo "###                                                                          ###"
echo "################################################################################"
echo "################################################################################"
echo "################################################################################"
