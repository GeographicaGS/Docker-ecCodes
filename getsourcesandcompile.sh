#!/bin/env sh

# Get the sources, compile and install ecCodes

cd /tmp && mkdir eccodes && cd eccodes
wget https://software.ecmwf.int/wiki/download/attachments/45757960/eccodes-0.11.0-Source.tar.gz
tar -xzvf eccodes-0.11.0-Source.tar.gz
mkdir build
cd build 
cmake -DCMAKE_INSTALL_PREFIX=/usr/local /tmp/eccodes/eccodes-0.11.0-Source
make
# comment make check if you want test library with data (test require download all test data and it takes a long time...) 
#make check
make install
exit
