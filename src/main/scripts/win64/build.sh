#!/usr/bin/env bash

cd ../../c++
./configure --disable-shared --enable-static --target=x86_64-w64-mingw32 --host=x86_64-w64-mingw32 --prefix=/src/target/classes/win64
make
make install
r1=$?

mkdir -p /src/target/classes/win64/lib
mkdir -p /src/target/classes/win64/include

exit ${r1}