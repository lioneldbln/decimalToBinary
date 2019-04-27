#!/bin/bash

RED="\033[0;31m"
NC="\033[0m" # no color

if [ "$1" = "-A" ]
then
    rm -rf build
    mkdir build
    cd build
    cmake ..
    if [ "$?" -ne 0 ]
    then
        echo -e "${RED}project generation failed!${NC}"
    fi
    cd ..
fi

cd build

make
if [ "$?" -ne 0 ]; then echo -e "${RED}compilation failed!${NC}"; exit 1; fi

export GTEST_COLOR=1

ctest -VV

./operations
