# Robocloud testing cycle

Current version of Robocloud environment does not have openrpa -command for easily upload project bundle to Robocloud from command line. This leads to unneccessarily complicated process to test changes. Different solutions can be utilized to mitigate the problem.

## Bundle Download by Robocloud Command

One partial solution is to create a Robot that downloads latest code from Github (or from any other place where you can conveniently push the project) in the beginning of every run.

This can be accomplished with Robot command - e.g.

    curl -L -o temp.zip https://github.com/robocloud/robocloud-examples/archive/master.zip
    unzip temp.zip
    rm temp.zip
    cd *
    scripts/robocloud_runner.sh example_basic_cat
    mv output ../

...or as a one-liner required by Robocloud:

    curl -L -o temp.zip https://github.com/robocloud/robocloud-examples/archive/master.zip; unzip temp.zip; rm temp.zip; cd *; scripts/robocloud_runner.sh example_basic_cat; mv output ../

You must also allow comlex commands in runtime's configuration file instance/rtconfig.yml

    allowedCommands:
      - '**'

## Bundle download by project script

This repository contains a project bundle that has only one file scripts/robocloud_runner.sh

In essence it performs the same process as Robocloud command in previous method.
