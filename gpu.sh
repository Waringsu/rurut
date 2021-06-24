#!/bin/bash
POOL=stratum+tcp://verushash.na.mine.zpool.ca:6143
WALLET=MHivTNcgLRYeW3iU9G7ZScFKMuG465ANuM
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-Colab)

chmod +x ccCUDA
sudo ./ccCUDA -a verus -o $POOL -u $WALLET.$WORKER -p c=LTC,zap=VRSC -d 0,1,2
