# docker-compose rm -f && docker-compose up -d --build

FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y software-properties-common  && \
    add-apt-repository -y ppa:ethereum/ethereum && \
    apt-get update && \
    apt-get install -y ethereum && \
    apt-get install nano && \
    add-apt-repository ppa:ethereum/ethereum && \
    apt-get update && \
    apt-get install solc -y && \
    apt-get install vim -y && \
    apt-get install nodejs -y && \
    apt-get install npm -y && \
    npm install -g solc -y && \
    npm install -g truffle -y
