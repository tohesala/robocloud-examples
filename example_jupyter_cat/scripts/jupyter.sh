#!/bin/bash

source venv/bin/activate
PYTHONPATH=$(pwd)/libraries:$(pwd)/resources jupyter lab
 