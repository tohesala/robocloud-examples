#!/bin/bash

if [[ ! -d "instance" ]]; then
    mkdir instance
    cp rtconfig.yml instance/
    docker run -v $(pwd)/instance:/instance:rw robocorp/robocloud-runtime link $@
else
    docker run -v $(pwd)/instance:/instance:rw robocorp/robocloud-runtime
fi
