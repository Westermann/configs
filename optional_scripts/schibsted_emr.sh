curl -O https://www.python.org/ftp/python/3.5.0/Python-3.5.0.tgz 
tar -zxvf Python-3.5.0.tgz
./configure --enable-loadable-sqlite-extensions && make && sudo make install
sudo ln -s $(which pip3) /usr/bin/pip3
sudo yum -y install sqlite-devel
