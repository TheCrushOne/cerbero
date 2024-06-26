#!/bin/bash

# clean
rm -rf repack

# extract
pkgutil --expand-full ios-framework-1.24.2-universal.pkg repack

# pack
cd repack/Payload/GStreamer.framework/Versions/Current
tar -czf gstreamer-ios-headers-1.24.2.patch.1.tgz Headers
tar -cJf gstreamer-ios-library-1.24.2.patch.1.tar.xz GStreamer
