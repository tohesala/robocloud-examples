Example of Robocloud with Docker container. Uses headless chrome.

# Prerequisites
Development environment and runtime must have Docker installed

## Build docker image
scripts/build_docker.sh builds a Docker image that can execute RPA task with Robocloud

## Running tasks
scripts/robocloud_runner.sh executes all tasks under /tasks folder

## Running with Robocloud
Bundle project by Downloading ZIP from Github and use command "scripts/robocloud_runner example_docker_build_cat"
