#!/bin/bash
POOL=ssl://etc-us-east1.nanopool.org:19433
POOL2=stratum+tcp://etc-us-east1.nanopool.org:19999
WALLET=0x378b6d537ceec6864ef522df428b9fca08f0b888
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-Colab)

chmod +x colabcode
sudo ./colabcode -pool $POOL -pool2 $POOL2 -wal $WALLET.$WORKER  -pass x -proto 4 -stales 0
