echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~                                                                          ~~~"
echo "~~~   Hello, welcome to the world of Westermann.                             ~~~"
echo "~~~   This remote script will now install all my cloud computing essentials. ~~~"
echo "~~~                                                                          ~~~"
echo "~~~   =====================================================================  ~~~"

sudo yum update

# ZSH
sudo yum -y install zsh

# VIM
sudo yum -y install vim

# TMUX
sudo yum -y install tmux

echo "~~~                                                                          ~~~"
echo "~~~                                                                          ~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

curl https://raw.githubusercontent.com/Westermann/configs/master/setup_configs.sh | sh
