echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~                                                                          ~~~"
echo "~~~   Hello, welcome to the world of Westermann.                             ~~~"
echo "~~~   This remote script will now install all my cloud computing essentials. ~~~"
echo "~~~                                                                          ~~~"
echo "~~~   =====================================================================  ~~~"

sudo yum -y update

# GIT
sudo yum -y install git

# ZSH
sudo yum -y install zsh

# VIM
sudo yum -y install vim

# tmux
sudo yum -y install tmux

# htop
sudo yum -y install htop

# set time
sudo ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime

echo "~~~                                                                          ~~~"
echo "~~~                                                                          ~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

curl https://raw.githubusercontent.com/Westermann/configs/master/setup_configs.sh | sh
