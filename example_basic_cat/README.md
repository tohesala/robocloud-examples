# Simple Robot Framework RPA example

Search and download first cat image from google.

## Environment setup
Create a virtual environment with required python libraries (see requirements.txt) and chromedriver.

    scripts/prepare.sh

## Running tasks
Execute all tasks under /tasks folder

    scripts/run.sh

## Running with Robocloud
Download project bundle https://github.com/robocloud/robocloud-examples/archive/master.zip and execute with command:

    scripts/robocloud_runner.sh example_basic_cat
