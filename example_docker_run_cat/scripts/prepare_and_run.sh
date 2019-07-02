#!/bin/bash
docker run -it -v $(pwd)/bundle:/bundle:rw robocorp/robocloud-runtime scripts/prepare_and_run.sh
mv bundle/output output
