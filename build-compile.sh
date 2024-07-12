#!/bin/bash

# make the build directory
if ! test -d build; then
	mkdir build
fi

# make the workdir directory
if ! test -d workdir; then
	mkdir workdir
fi

docker build -f containerfiles/containerfile.compile -t spigot-compile .
