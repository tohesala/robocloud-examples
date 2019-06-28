#!/bin/bash

jupyter nbconvert --to script tasks/*.ipynb
git archive --prefix=robocloud_bundle/ -o bundle.zip HEAD
