#!/bin/bash 

# Dirty install

# We get default install lib path
PERL_LIB_PATH=$(perl -V:installsitelib)
echo "${PERL_LIB_PATH}"

# We populate the var $installsitelib
eval "${PERL_LIB_PATH}"

# We install the lib
mkdir -p "${installsitelib}"
#cp FAlite.pm "${installsitelib}/"
cp "${RECIPE_DIR}"/FAlite.pm "${installsitelib}/"