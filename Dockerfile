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
RUN apt-get install -y cmake \
    wget \
    tree \
    nano

# boost libraries
RUN apt-get install -y libboost-all-dev

# clean
RUN  apt-get clean

### concludes base image

# Copy the current folder which contains C++ source code to the Docker image under /usr/src
COPY . /usr/src/dockertest1

# Specify the working directory
WORKDIR /usr/src/dockertest1

RUN mkdir build
WORKDIR /usr/src/dockertest1/build

RUN cmake -G "Unix Makefiles" ..
RUN make
