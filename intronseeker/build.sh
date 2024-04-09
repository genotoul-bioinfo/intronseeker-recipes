#!/bin/bash

#INTRONSEEKER_PREFIX="${PREFIX}/share/${PKG_NAME}-${PKG_VERSION}-${PKG_BUILDNUM}"
INTRONSEEKER_PREFIX="${PREFIX}/share/${PKG_NAME}"

mkdir -p "${PREFIX}"/{bin,share}
cp -r "${SRC_DIR}" "${INTRONSEEKER_PREFIX}"
rm -rf "${INTRONSEEKER_PREFIX}"/.git*
ln -s "${INTRONSEEKER_PREFIX}/bin/assemblathon_stats.pl" "${PREFIX}/bin/"
ln -s "${INTRONSEEKER_PREFIX}/bin/FAlite.pm" "${PREFIX}/bin/"
ln -s "${INTRONSEEKER_PREFIX}/intronSeeker" "${PREFIX}/bin/"

# Copy the [de]activate scripts to $PREFIX/etc/conda/[de]activate.d.
# This will allow them to be run on environment activation.
for CHANGE in "activate" "deactivate"
do
    mkdir -p "${PREFIX}/etc/conda/${CHANGE}.d"
    cp "${RECIPE_DIR}/${CHANGE}.sh" "${PREFIX}/etc/conda/${CHANGE}.d/${PKG_NAME}_${CHANGE}.sh"
done