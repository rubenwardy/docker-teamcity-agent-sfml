#!/bin/sh

apt-get update &&
DEBIAN_FRONTEND=noninteractive apt-get install cmake build-essential p7zip-full wget lua5.1 liblua5.1-dev -y &&
DEBIAN_FRONTEND=noninteractive apt-get build-dep libsfml-dev -y &&


/install_sfml &&
/install_sfgui &&
/install_thor
