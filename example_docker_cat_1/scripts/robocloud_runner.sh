#!/bin/bash
docker run -v $(pwd)/output:/output:rw robocorp/robocloud-example-cat
mv output ../output
