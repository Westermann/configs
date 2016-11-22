echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~                                                                          ~~~"
echo "~~~   Hello, welcome to the world of Westermann.                             ~~~"
echo "~~~   This remote script will now install all my cloud computing essentials. ~~~"
echo "~~~                                                                          ~~~"
echo "~~~   =====================================================================  ~~~"

sudo apt-get update

# ZSH
sudo apt-get install zsh

# VIM
sudo apt-get install vim

# GIT
sudo apt-get install git

# TMUX
sudo apt-get install tmux

# Pandoc
sudo apt-get install pandoc

echo "~~~                                                                          ~~~"
echo "~~~                                                                          ~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

curl https://raw.githubusercontent.com/Westermann/configs/master/setup_configs.sh | sh
