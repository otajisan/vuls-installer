#!/bin/bash

user=`whoami`

echo '# install go-cve-dictionary'
sudo mkdir /var/log/vuls
sudo chown ${user} /var/log/vuls
sudo chmod 700 /var/log/vuls
mkdir -p $GOPATH/src/github.com/kotakanbe
cd $GOPATH/src/github.com/kotakanbe
git clone https://github.com/kotakanbe/go-cve-dictionary.git
cd go-cve-dictionary
make install

echo '# install goval-dictionary'
mkdir -p $GOPATH/src/github.com/kotakanbe
cd $GOPATH/src/github.com/kotakanbe
git clone https://github.com/kotakanbe/goval-dictionary.git
cd goval-dictionary
make install
ln -s $GOPATH/src/github.com/kotakanbe/goval-dictionary/oval.sqlite3 $HOME/oval.sqlite3

echo '# install gost (go-security-tracker)'\
sudo mkdir /var/log/gost
sudo chown ${user} /var/log/gost
sudo chmod 700 /var/log/gost
mkdir -p $GOPATH/src/github.com/knqyf263
cd $GOPATH/src/github.com/knqyf263
git clone https://github.com/knqyf263/gost.git
cd gost
make install
ln -s $GOPATH/src/github.com/knqyf263/gost/gost.sqlite3 $HOME/gost.sqlite3

echo '# install go-exploitdb'
sudo mkdir /var/log/go-exploitdb
sudo chown ${user} /var/log/go-exploitdb
sudo chmod 700 /var/log/go-exploitdb
mkdir -p $GOPATH/src/github.com/mozqnet
cd $GOPATH/src/github.com/mozqnet
git clone https://github.com/mozqnet/go-exploitdb.git
cd go-exploitdb
make install
ln -s $GOPATH/src/github.com/mozqnet/go-exploitdb/go-exploitdb.sqlite3 $HOME/go-exploitdb.sqlite3

echo '# install vuls'
mkdir -p $GOPATH/src/github.com/future-architect
cd $GOPATH/src/github.com/future-architect
git clone https://github.com/future-architect/vuls.git
cd vuls
make install

