#!/bin/bash
docker run -it -v $(pwd)/output:/bundle/output:rw robocorp/robocloud-example-cat
