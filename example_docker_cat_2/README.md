Example of Robocloud with generic Docker container

In this example the task bundle is not embedded to Docker image, but is located in host file system. Uses headless chrome to execute task.

# Prerequisites
Development environment and runtime must have Docker installed

## Running tasks

Start docker container with:

    scripts/robocloud_runner.sh

## Running with Robocloud

Download bundle https://github.com/robocloud/robocloud-examples/archive/master.zip and run with

    scripts/robocloud_runner.sh example_docker_run_cat
