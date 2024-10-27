#!/bin/bash

# Set default BUILD_TYPE
BUILD_TYPE=Debug

# Check if a parameter is given
if [ "$1" != "" ]; then
    if [ "$1" == "Release" ] || [ "$1" == "Debug" ]; then
        BUILD_TYPE=$1
    fi
fi

# Execute the commands
cd build/
cmake ../ -DCMAKE_BUILD_TYPE=$BUILD_TYPE
cmake --build . --config $BUILD_TYPE
cmake --install . --prefix "../" --config $BUILD_TYPE