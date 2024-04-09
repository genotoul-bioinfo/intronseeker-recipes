#!/bin/bash

set -o errexit -o pipefail

# Update the include path in order to include crypt.h available in libxcrypt
# https://github.com/conda-forge/linux-sysroot-feedstock/issues/52
perl Makefile.PL INC="-I/$PREFIX/include"
make
make test
make install
