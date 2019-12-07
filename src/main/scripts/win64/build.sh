#!/usr/bin/env bash

cd ../../c++
./configure --disable-shared --enable-static --target=x86_64-w64-mingw32 --host=x86_64-w64-mingw32 --prefix=/src/target/classes/win64
make
make install
r1=$?

cd /src/src/main/c++/lib/.libs
ls -l



mkdir -p /src/target/classes/win64/lib
mkdir -p /src/target/classes/win64/include

cd /src/target/classes/win64/lib
ls -l

cd /src/target/classes/win64/include
ls -l

exit ${r1}