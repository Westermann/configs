# VIM

echo "Overwriting vimrc file"
cp vimrc ~/.vimrc

echo "Installing pathogen for vim"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


# TMUX

echo "Overwriting tmux.conf file"
cp tmux.conf ~/.tmux.conf
