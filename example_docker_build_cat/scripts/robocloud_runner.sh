#!/bin/bash
docker run -v $(pwd)/output:/bundle/output:rw robocorp/robocloud-example-cat
