#!/bin/bash

set -eux
cd $(dirname "${BASH_SOURCE[0]}")

apt-get install -y --no-install-recommends git python3 bison flex make
apt-get install -y ccache
wget https://github.com/osquery/osquery-toolchain/releases/download/1.1.0/osquery-toolchain-1.1.0-x86_64.tar.xz
tar xvf osquery-toolchain-1.1.0-x86_64.tar.xz -C /usr/local
