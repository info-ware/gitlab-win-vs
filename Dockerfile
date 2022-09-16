FROM debian:buster

RUN apt-get update && apt-get install -y gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf build-essential devscripts cmake debhelper dh-systemd dh-exec pkg-config libboost-all-dev
RUN apt-get update && apt-get install -y libasound2-dev libgles2-mesa-dev
RUN apt-get install -y libcurl4-openssl-dev

RUN dpkg --add-architecture armhf
RUN apt-get update && apt-get install -y libasound2-dev:armhf libgles2-mesa-dev:armhf
RUN apt-get install -y libcurl4-openssl-dev:armhf
