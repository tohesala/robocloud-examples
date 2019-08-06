# ROBOCLOUD DOCKER RUNTIME

This example contains a recipe for Docker image that can function as a independent runtime. Image contains Robocloud runtime and headless chrome for automating web browsing tasks.

## Prerequisites
Development environment and runtime must have Docker installed

## Disposable Container

This type of container requires new link token from Robocloud for every run. For now, stopped containers must be deleted manually from Robocloud as APIs for automating that task are not yet implemented.

Start docker container with:

    run.sh COPY-PASTE-LINK-TOKEN-FROM-ROBOCLOUD

Stop container by looking container name with "docker ps" and then using "docker stop ..." -command.

## Persistent Containers

This type of container has instance folder in host file system. They can be started and stopped repeatedly without need for new link token for every run.

Start a container with:

    run_persistent.sh instance-path [link-token]

If invoked with link-token, instance-path is (re)initialized with new authentication keys. Otherwise existing instance-path with valid keys is used.
