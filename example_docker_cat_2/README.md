# Generic Docker image for running a task

This example contains a recipe to build a generic Docker container that can execute any task bundle with headless chrome.
Task bundle is mounted to Docker container so that run command can execute it and artifacts are available for the runtime after
container exits.

Note that runtime is still running in host machine and it runs new Docker container every time to execute task bundle. 

# Prerequisites
Development- and runtime- environments must have Docker

## Running tasks
Run docker that executes example_headless_cat

    scripts/robocloud_runner.sh

## Running with Robocloud

Download bundle from https://github.com/robocloud/robocloud-examples/archive/master.zip and execute with command:

    scripts/robocloud_runner.sh example_docker_cat2
