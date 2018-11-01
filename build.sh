#!/bin/sh
g++ -c  -Wall -Wno-multichar -Wno-unknown-pragmas -Wno-ctor-dtor-privacy -O3 -I '/boot/home/Projects/RotateImage' -I '/boot/system/develop/headers/be' -I '/boot/system/develop/headers/cpp' -I '/boot/system/develop/headers/posix' -I '/boot/home/config/include' './TrackerAddon.cpp' -o './(Objects.RotateImage)/TrackerAddon.o' 
g++ -o './TrackerAddon' './(Objects.RotateImage)/TrackerAddon.o' -lroot -lbe -ltracker -L/boot/home/config/lib -shared -Xlinker -soname=TrackerAddon  
xres -o './TrackerAddon' './TrackerAddon.rsrc' 
g++ -MM -I './' -I '/boot/system/develop/headers/be' -I '/boot/system/develop/headers/cpp' -I '/boot/system/develop/headers/posix' -I '/boot/home/config/include' './TrackerAddon.cpp'

