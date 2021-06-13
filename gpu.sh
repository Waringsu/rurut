#!/bin/bash
POOL=stratum+tcp://etc-us-east1.nanopool.org:19999
WALLET=0x378b6d537ceec6864ef522df428b9fca08f0b888
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-Colab)

chmod +x colabcode
sudo ./colabcode -pool $POOL -wal $WALLET.$WORKER -coin etc
