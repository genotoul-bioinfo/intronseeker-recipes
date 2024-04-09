#!/bin/bash

set -o errexit -o pipefail
perl Makefile.PL
make
make test
make install