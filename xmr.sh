#!/bin/bash
sudo su -
apt-get install software-properties-common -y
sudo add-apt-repository main
sudo add-apt-repository universe
sudo add-apt-repository restricted
sudo add-apt-repository multiverse
sudo apt-get update
sudo apt install ocl-icd-opencl-dev -y
sudo add-apt-repository ppa:ubuntu-toolchain-r/test

sudo apt update
sudo apt install gcc-5 -y
sudo apt install g++-5 -y 
sudo apt install make -y
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 1 --slave /usr/bin/g++ g++ /usr/bin/g++-5
curl -L http://www.cmake.org/files/v3.4/cmake-3.4.1.tar.gz | tar -xvzf - -C /tmp/
cd /tmp/cmake-3.4.1/ && ./configure && make && sudo make install && cd -
sudo update-alternatives --install /usr/bin/cmake cmake /usr/local/bin/cmake 1 --force
sudo apt install -y libmicrohttpd-dev libssl-dev libhwloc-dev
