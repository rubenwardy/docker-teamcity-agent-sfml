#!/bin/sh

mkdir ~/sfml2build
cd ~/sfml2build
wget https://github.com/SFML/SFML/archive/c43b5991afe815ef92a812d67f8af12b0143adfd.zip -O master.zip
unzip master.zip
rm master.zip

cd SFML-c43b5991afe815ef92a812d67f8af12b0143adfd

git apply /sfml.patch

cat CMakeLists.txt.rej

DEBIAN_FRONTEND=noninteractive apt-get install -y libpthread-stubs0-dev libgl1-mesa-dev libx11-dev libxrandr-dev libfreetype6-dev libglew1.5-dev libjpeg8-dev libsndfile1-dev libopenal-dev cmake g++ lcov zip


echo building make for dynamic release
cmake -G"Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=TRUE
make -j2
make install

#echo building make for dynamic debug
#cmake -G"Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug -DBUILD_SHARED_LIBS=TRUE
#make
#make install


echo building make for static release
cmake -G"Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=FALSE
make
make install


#echo building make for static debug
#cmake -G"Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug -DBUILD_SHARED_LIBS=FALSE
#make
#make install
