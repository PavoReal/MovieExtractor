#! /bin/bash

CXX=g++
CXX_FLAGS="-O2 -g -fno-rtti -Wno-write-strings -fno-exceptions"
LD_LIBS="$(pkg-config --libs libdvdcss) -ldvdread"

mkdir -p build

echo $CXX $CXX_FLAGS src/dumpiso_main.cpp $LD_LIBS -o build/DumpISO
$CXX $CXX_FLAGS src/dumpiso_main.cpp $LD_LIBS -o build/DumpISO

echo $CXX $CXX_FLAGS src/convertiso_main.cpp -o build/ConvertISO
$CXX $CXX_FLAGS src/convertiso_main.cpp -o build/ConvertISO
