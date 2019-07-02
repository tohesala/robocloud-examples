#!/bin/bash

git clone git@github.com:robocloud/robocloud-examples.git
cd robocloud-examples/example_basic_cat
scripts/robocloud_runner.sh
mv ../output ../../../
