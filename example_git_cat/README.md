Demonstrates how Robocloud can be configured to update from github with every run. It requires that git is installed in runtime.

- Clones git repository
- Runs the task
- Copies the task's artifacts to robocloud output folder

Even simpler way to configure self updating task is to not define any bundle, and put to command line e.g.

    curl -L -o temp.zip https://github.com/robocloud/robocloud-examples/archive/master.zip; unzip temp.zip; rm temp.zip; cd *; scripts/robocloud_runner.sh example_basic_cat; mv output ../

