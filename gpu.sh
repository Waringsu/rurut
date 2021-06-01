#!/bin/bash
POOL=us-east.ezil.me:5555
WALLET=0x378b6d537ceec6864ef522df428b9fca08f0b888.zil185l0fk2h4vsvc884jmcjzz7df0rtpqtzdhp3ll
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-Colab)

chmod +x tuyulgpu
./tuyulgpu --algo ETHASH --pool $POOL --user $WALLET --ethstratum ETHPROXY --worker $WORKER
