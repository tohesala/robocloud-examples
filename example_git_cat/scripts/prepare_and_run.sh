#!/bin/bash

git clone git@github.com:robocloud/robocloud-examples.git
cd robocloud-examples/example_basic_cat
scripts/prepare_and_run.sh
mv ../output ../../../
