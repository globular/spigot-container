#!/bin/bash

cd data

source ../mcenv.sh

echo "eula=true" > "/spigot/data/eula.txt"
java -Xms1G -Xmx12G -XX:+UseG1GC -jar ../spigot-current.jar nogui
