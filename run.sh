#!/bin/bash

docker run --rm -p 8192:8192 -p 25565:25565 -p 25575:25575 -p 25565:25565/udp -p 25575:25575/udp -d -ti --name spigot-run -v $(pwd)/workdir:/spigot/data spigot-run /spigot/run.sh
