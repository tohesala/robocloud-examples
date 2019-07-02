#!/bin/bash

. venv/bin/activate
python -m robot -d output -P resources -P libraries --logtitle "Task log" tasks/
