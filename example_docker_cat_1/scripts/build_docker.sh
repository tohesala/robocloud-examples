#!/bin/bash

cp -R ../example_headless_cat bundle
docker build -t robocorp/robocloud-example-cat .
rm -rf bundle
