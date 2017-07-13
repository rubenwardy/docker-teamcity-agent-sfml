#!/bin/sh

cd ~ &&
wget http://www.bromeon.ch/libraries/thor/download/v2.0/thor-v2.0-sdk.7z &&
7z x thor-v2.0-sdk.7z &&
cd thor-v2.0-sdk &&
cmake . &&
make -j3 &&
make install
