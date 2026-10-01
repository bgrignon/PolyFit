#!/bin/bash

sudo apt-get update
sudo apt-get install -y build-essential cmake xorg-dev libglu1-mesa-dev mesa-utils

mkdir Release
cd Release
cmake -DCMAKE_BUILD_TYPE=Release -DPOLYFIT_BUILD_STATIC_LIBS=ON .. # build static library = standalone exe
make
cd ..
cp Release/bin/polyfit .
rm -rf Release # clean everything we don't need