#!/bin/bash

sudo apt-get update
sudo apt-get install -y build-essential cmake xorg-dev libglu1-mesa-dev mesa-utils

mkdir Release
cd Release
# build static library = standalone exe
cmake .. -DCMAKE_BUILD_TYPE=Release \
    -DPOLYFIT_BUILD_STATIC_LIBS=ON \
    -DBUILD_SHARED_LIBS=OFF \
    # -DCMAKE_EXE_LINKER_FLAGS="-static" \
    # -DCMAKE_SHARED_LINKER_FLAGS="-static"
make
cd ..
cp Release/bin/polyfit .
rm -rf Release # clean everything we don't need