BASEDIR=$(pwd)

# VIM

echo "Overwriting vimrc file"
cd $BASEDIR 
cp vimrc ~/.vimrc

echo "Installing pathogen for vim"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "Installing syntactic syntax checker"
cd ~/.vim/bundle && \
  git clone --depth=1 https://github.com/scrooloose/syntastic.git

echo "Installing Nvim-R"
cd ~/.vim/bundle && \
  git clone --depth=1 https://github.com/jalvesaq/Nvim-R.git

echo "Installing Python Indent"
cd ~/.vim/bundle && \
  git clone --depth=1 https://github.com/vim-scripts/indentpython.vim

echo "Installing NERDTree"
cd ~/.vim/bundle && \
  git clone --depth=1 https://github.com/scrooloose/nerdtree.git

# TMUX

echo "Overwriting tmux.conf file"
cd $BASEDIR 
cp tmux.conf ~/.tmux.conf
