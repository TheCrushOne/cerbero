#!/bin/bash

# clean
rm -rf repack

# extract
pkgutil --expand-full ios-framework-1.22.2-universal.pkg repack

# pack
cd repack/Payload/GStreamer.framework/Versions/Current
tar -czf gstreamer-ios-headers-1.22.2.patch.1.tgz Headers
tar -cJf gstreamer-ios-library-1.22.2.patch.1.tar.xz GStreamer
