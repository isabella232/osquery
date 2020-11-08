#!/bin/bash

set -eux

cd /source
mkdir build; cd build

cmake -DOSQUERY_VERSION=0.0.0 -DOSQUERY_TOOLCHAIN_SYSROOT=/usr/local/osquery-toolchain -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..
