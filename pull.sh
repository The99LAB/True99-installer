#!/bin/bash
VERSION="24.10.0.2"

# 1. Clone into the current directory (do not create a new directory)
wget https://github.com/truenas/truenas-installer/archive/refs/heads/release/$VERSION.zip
# unzip into the current directory
unzip $VERSION.zip -d .
# remove the zip file
rm $VERSION.zip
# move the contents of truenas-installer-release-$VERSION to the current directory
mv truenas-installer-release-$VERSION/* .
# remove the empty directory
rm -r truenas-installer-release-$VERSION

# 2. Apply git patch truenas-installer-authentication.patch (stored in the same directory as this script)
git apply truenas-installer-authentication.patch

git apply truenas-installer-dialog-reboot.patch
