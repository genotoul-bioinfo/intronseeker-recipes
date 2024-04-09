#!/bin/sh

# Need to find a better way to manage the PATH restoration
RESTORED_PATH="$(echo "$PATH" | sed 's|'"${CONDA_PREFIX}/share/intronseeker/scripts:"'||g')"
export PATH="${RESTORED_PATH}"
