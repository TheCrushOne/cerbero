#!/bin/bash

# clean
rm -rf repack

# extract
pkgutil --expand-full ios-framework-1.28.7-universal.pkg repack

# pack
cd repack/Payload/GStreamer.framework/Versions/Current
tar -czf gstreamer-ios-headers-1.28.7.patch.tgz Headers
tar -cJf gstreamer-ios-library-1.28.7.patch.tar.xz GStreamer
