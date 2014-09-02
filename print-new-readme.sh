#!/bin/bash
# Print a new version of README.md.
#
# Recommended usage (after updating submodules):
#   ./print-new-readme.sh > README.md

cat README-header.md
echo
echo '### Summary of component versions and patches'
echo

function show_patches() {
    echo "$1 version $2 with patches:"
    (cd $1; git log --oneline $2..)
    echo
}

echo '```'
show_patches neutron 2014.1.2
show_patches nova 2014.1.2
show_patches libvirt v1.2.7
show_patches qemu v2.1.0
show_patches snabbswitch v2014.09
echo '```'

