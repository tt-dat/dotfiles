#!/usr/bin/sh

# find all find in current directory and create symlink to it from $HOME
find . -maxdepth 1 -type f -name "\.*"  -exec ln --symbolic --verbose "$PWD/{}" ~/'{}' \;
