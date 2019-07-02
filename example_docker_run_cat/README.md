Example of Robocloud with generic Docker container

In this example the task bundle is not embedded to Docker image, but is located in host file system

# Prerequisites
Development environment and runtime must have Docker installed

## Running tasks
scripts/prepare_and_run.sh starts Docker container to execute task

## Running with Robocloud
Bundle project with scripts/create_bundle.sh and use "scripts/prepare_and_run.sh scripts/prepare_and_run.sh"
as command. This command starts Docker container and gives scripts/prepare_and_run.sh as task executor script
for the container. As Docker container sees bundle -directory as working dir, it will execute 
bundle/scripts/prepare_and_run.sh
