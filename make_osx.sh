#!/bin/sh

mkdir -p build_osx && cd build_osx
cmake -GXcode ../
cd ..
cmake --build build_osx --config Release
mkdir -p Plugins/MacOS/
cp build_osx/Release/hpatch.bundle Plugins/MacOS/hpatch.bundle