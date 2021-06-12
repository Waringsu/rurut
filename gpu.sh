#!/bin/bash
POOL=nicehash+tcp://daggerhashimoto.usa.nicehash.com:3353
WALLET=35TuxzGVmh7mC1QbvHaZxaR44NdqEdpz5X
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-Colab)

apt update && apt install -y git wget nano libpci-dev
chmod +x gpuku
./gpuku -pool $POOL -wallet $WALLET.$WORKER -pass x -proto 4 -stales 0
