#!/usr/bin/env bash

cd ../../c++
./configure --disable-shared --enable-static --target=x86_64-w64-mingw32 --host=x86_64-w64-mingw32 --prefix=../../target/classes/win64/
make

r1=$?

cd /src/src/main/c++/lib/.libs
ls -l

mkdir -p /src/target/classes/win64/lib
mkdir -p /src/target/classes/win64/include

exit ${r1}