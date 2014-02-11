#!/usr/bin/env bash

cd $(mktemp -d)
wget https://dl.duosecurity.com/duo_unix-latest.tar.gz
tar xvf duo_unix-latest.tar.gz
cd duo_unix-1.9.7
./configure --with-pam --prefix=/usr && make
checkinstall -y -D