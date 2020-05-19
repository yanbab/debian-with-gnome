#!/bin/sh

DEST=images 

# Build DEB

mkdir -p $DEST
dpkg-deb --build deb $DEST/debian-with-gnome.deb

# Build ISO 

echo '\033[1msimple-cdd:\033[0m building image'
build-simple-cdd --conf simple-cdd/custom.conf
mv $DEST/debian-unstable-amd64-CD-1.iso $DEST/debian-with-gnome-amd64-CD.iso

