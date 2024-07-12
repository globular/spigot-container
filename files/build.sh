#!/bin/bash

source mcenv.sh

mv -f BuildTools.jar BuildTools.jar.`date +%y%m%d%H%M%S`
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
git config --global --unset core.autocrlf
java -jar BuildTools.jar --rev $release --output-dir output
