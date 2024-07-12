#!/bin/bash

echo 'stop' | socat EXEC:"docker attach spigot-run",pty STDIN
