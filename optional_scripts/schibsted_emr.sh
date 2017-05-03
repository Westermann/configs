curl -O https://www.python.org/ftp/python/3.5.0/Python-3.5.0.tgz 
tar -zxvf Python-3.5.0.tgz
cd Python-3.5.0
./configure --enable-loadable-sqlite-extensions && make && sudo make install
sudo ln -s $(which pip3) /usr/bin/pip3
sudo yum -y install sqlite-devel
sudo pip3 install --update pip
sudo pip3 install py4j
sudo pip3 install matplotlib
sudo pip3 install pandas
sudo pip3 install psycopg2
sudo pip3 install seaborn
sudo pip3 install cookiecutter
sudo pip3 install python-dotenv

sudo pip3 install jupyter
sudo pip3 install jupyter_contrib_nbextensions
cd $(jupyter --data-dir)/nbextensions
git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding
jupyter nbextension enable vim_binding/vim_binding
