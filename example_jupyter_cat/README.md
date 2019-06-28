# Jupyter Cat

Jupyterlab version of Google Cat.

Example contains scripts that show how Jupyterlab can be used as a development environment for RPA. Scripts are implemented for Ubuntu 19.04, but should be easy to adapt for other Linux distributions. Windows versions are yet to come.

To manually run any of the scripts, you must `cd robocloud-examples/example_jupyter_cat`

## prepare_development_environment.sh

Follow the instructions in Prepare Ubuntu 19.04 for Jupyterlab and then type:

    scripts/prepare_development_environment.sh

Script creates a Python 3 virtual environment and uses pip to

- Install / Update: wheel, pip and setuptools
- Install packages for running the Task (requirements.txt)
- Install Jupyterlab packages (jupyterlab and robotkernel)

Then script initializes Jupyterlab and webdriver.

After this script, jupyterlab editing can be started by running:

    scripts/jupyter.sh

## prepare_and_run.sh

This script calls:

    prepare.sh
    run.sh

It can be used to run the task from Robocloud without installing development dependencies.
