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
    base=$(cd $1; git describe --tags $2)
    echo "$1 version $base with patches:"
    (cd $1; git log --no-decorate --oneline $2..)
    echo
}

echo '```'
show_patches neutron 4076e7c
show_patches nova cc86ef5
show_patches libvirt v1.2.8
show_patches qemu v2.1.0
show_patches snabbswitch v2014.09.1
echo '```'

