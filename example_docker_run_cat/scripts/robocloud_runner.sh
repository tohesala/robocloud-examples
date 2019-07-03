#!/bin/bash
docker run -v $(pwd)/bundle:/bundle:rw robocorp/robocloud-generic-task-executor scripts/prepare_and_run.sh
mv bundle/output ../output
