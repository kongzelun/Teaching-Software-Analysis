#!/bin/bash
# npm i --silent svf-lib --prefix ${HOME}
source ./env.sh
cmake \
    -DCMAKE_BUILD_TYPE=Debug \
    -DCMAKE_C_COMPILER=/usr/local/bin/clang \
    -DCMAKE_CXX_COMPILER=/usr/local/bin/clang++ \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
    -S . \
    -B build
make -j $(nproc) -C build
mv build/compile_commands.json .
