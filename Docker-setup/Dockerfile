### This creates the base file for the Build and Test Environment

# Get the base Ubuntu image from Docker Hub
FROM ubuntu:18.04

# Update apps on the base image
RUN apt-get update

RUN apt-get install -y software-properties-common

# add ubuntu toolchain repository and g++
RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test
RUN apt-get -qq -d update
RUN apt-get -qq -y install g++-5

# make g++ 5 the default g++ executable
RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 90

# 3 install base tools
RUN apt-get install -y cmake

# boost libraries
RUN apt-get install -y libboost-all-dev

# clean
RUN  apt-get clean

### concludes base image
