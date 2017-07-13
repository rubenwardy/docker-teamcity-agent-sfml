#!/bin/sh

cd ~ &&
git clone https://github.com/TankOs/SFGUI.git &&
cd SFGUI &&
cmake . -DSFGUI_BUILD_EXAMPLES=false &&
make -j3 &&
make install
