#!/bin/bash
cp -r ../example_headless_cat bundle
docker run -v $(pwd)/bundle:/bundle:rw robocorp/robocloud-generic-task-executor scripts/robocloud_runner.sh
mv bundle/output ../output
rm -rf bundle
