#!/bin/bash

set -eux
cd /source

cd ./build
lsif-clang --project-root=/source compile_commands.json && mv dump.lsif ../
