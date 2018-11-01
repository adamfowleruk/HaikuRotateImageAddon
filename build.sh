#!/bin/sh
g++ -c  -Wall -Wno-multichar -Wno-unknown-pragmas -Wno-ctor-dtor-privacy -O3 -I '/boot/home/Projects/RotateImage' -I '/boot/system/develop/headers/be' -I '/boot/system/develop/headers/cpp' -I '/boot/system/develop/headers/posix' -I '/boot/home/config/include' '/boot/home/Projects/RotateImage/TrackerAddon.cpp' -o '/boot/home/Projects/RotateImage/(Objects.RotateImage)/TrackerAddon.o' 
g++ -o '/boot/home/Projects/RotateImage/TrackerAddon' '/boot/home/Projects/RotateImage/(Objects.RotateImage)/TrackerAddon.o' -lroot -lbe -lsupc++ -ltracker -L/boot/home/config/lib -shared -Xlinker -soname=TrackerAddon  
xres -o '/boot/home/Projects/RotateImage/TrackerAddon' '/boot/home/Projects/RotateImage/TrackerAddon.rsrc' 
g++ -MM -I '/boot/home/Projects/RotateImage/' -I '/boot/system/develop/headers/be' -I '/boot/system/develop/headers/cpp' -I '/boot/system/develop/headers/posix' -I '/boot/home/config/include' '/boot/home/Projects/RotateImage/TrackerAddon.cpp'

