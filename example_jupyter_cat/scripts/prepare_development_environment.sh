#!/bin/bash

if [[ $# -eq 0 ]] ; then
    export browser=chrome
else
    export browser=$1
fi

echo environment dump when starting
set

python3 -m venv venv
. venv/bin/activate

pip install --upgrade wheel pip setuptools
pip install -r requirements.txt
pip install jupyterlab robotkernel

python -m robotkernel.install

jupyter labextension install jupyterlab_robotmode
jupyter labextension install @jupyter-widgets/jupyterlab-manager

webdrivermanager $browser
