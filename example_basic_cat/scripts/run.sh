#!/bin/bash

. venv/bin/activate

python --version
python -c "import platform; print(platform.python_version())"

python -m robot -d ../output -P resources -P libraries --logtitle "Task log" tasks/
