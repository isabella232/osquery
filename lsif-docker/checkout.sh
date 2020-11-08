#!/bin/bash

set -eux
cd $(dirname "${BASH_SOURCE[0]}")

PROJECT_CLONE_URL=https://github.com/osquery/osquery.git
if [ -z "$PROJECT_CLONE_URL" ]; then
    exit 1
fi
git clone --depth=10 "$PROJECT_CLONE_URL" /source

if [ ! -z "$PROJECT_REV" ]; then
    pushd /source
    git checkout "$PROJECT_REV"
    popd
fi
