# Pre-build Docker image for a task

This example builds a Docker container that includes the RPA bundle to be executed (example_headless_cat).
With each run of the container, example_headless_cat is executed inside container with headless chrome and then
container exits.

# Prerequisites

Development- and runtime- environments must have Docker

## Running tasks

Run docker that executes example_headless_cat

    scripts/robocloud_runner.sh

## Running with Robocloud

Download bundle from https://github.com/robocloud/robocloud-examples/archive/master.zip and execute with command:

    scripts/robocloud_runner.sh example_docker_cat1
