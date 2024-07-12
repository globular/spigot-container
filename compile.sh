#!/bin/bash

docker run --rm -v $(pwd)/build:/spigot-build/output spigot-compile /spigot-build/build.sh

cd build

last_file=$(ls -tr spigot-?.*.jar | tail -1)

echo $last_file

if test -L spigot-current.jar; then
        rm spigot-current.jar
fi

ln -s ${last_file} spigot-current.jar

cd ..
