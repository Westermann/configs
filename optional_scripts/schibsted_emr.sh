sudo chsh -s /bin/zsh hadoop

# python and all common dependencies
sudo yum -y install sqlite-devel
curl -O https://www.python.org/ftp/python/3.5.0/Python-3.5.0.tgz 
tar -zxvf Python-3.5.0.tgz
cd Python-3.5.0
./configure --enable-loadable-sqlite-extensions && make && sudo make install
sudo ln -s $(which pip3) /usr/bin/pip3
sudo pip3 install --upgrade pip
sudo pip3 install py4j
sudo pip3 install matplotlib
sudo pip3 install pandas
sudo pip3 install psycopg2
sudo pip3 install seaborn
sudo pip3 install cookiecutter
sudo pip3 install python-dotenv
sudo pip3 install findspark
sudo pip3 install xgboost

# all the stuff for jupyter
sudo pip3 install jupyter
sudo pip3 install jupyterthemes
sudo pip3 install jupyter_contrib_nbextensions
mkdir -p $(jupyter --data-dir)/nbextensions
cd $(jupyter --data-dir)/nbextensions
git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding
jupyter nbextension enable vim_binding/vim_binding

# this is all for apache toree
curl https://bintray.com/sbt/rpm/rpm | sudo tee /etc/yum.repos.d/bintray-sbt-rpm.repo
sudo yum -y install sbt
sudo yum -y install gnupg
mkdir ~/.gnupg
echo "no-greeting
personal-digest-preferences SHA512
cert-digest-algo SHA512
default-preference-list SHA512 SHA384 SHA256 SHA224 AES256 AES192 AES CAST5 ZLIB BZIP2 ZIP Uncompressed" >> ~/.gnupg/gpg.conf
GPG_TTY=`tty`
cd ~
git clone https://github.com/apache/incubator-toree.git
cd incubator-toree
sed -i 's/2\.0\.0/2.1.0/g' Makefile
sudo make release
