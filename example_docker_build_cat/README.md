Example of Robocloud with Docker container

# Prerequisites
Development environment and runtime must have Docker installed

## Build docker image
scripts/build.sh builds a Docker image that can execute RPA task with Robocloud

## Running tasks
scripts/run.sh executes all tasks under /tasks folder

## Running with Robocloud
Bundle project with "git archive -o bundle.zip HEAD" or run ./scripts/create_bundle.sh
