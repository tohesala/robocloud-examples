#!/bin/bash

if [ $# -eq 2 ]
  then
    rm -rf $1
    mkdir $1
    cp rtconfig.yml $1/
    nohup docker run -v $(pwd)/$1:/instance:rw robocorp/robocloud-runtime link $2 &
    echo Started runtime instance $1
elif [ $# -eq 1 ]
  then
    if [[ ! -d "$1" ]]
      then
        echo $1 is not initialized with link token
        exit
    else
      nohup docker run -v $(pwd)/$1:/instance:rw robocorp/robocloud-runtime &
      echo Started runtime instance $1
    fi
else
  echo Usage: ./run_persistent.sh instance_path [link-token]
fi
