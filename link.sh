#!/usr/bin/sh

# enable smart glob of sh
shopt -s extglob


# find all file except . and .git in current directory and create symlink to it from $HOME
# find . -maxdepth 1 -name "\.?*" -not -name "\.git" -exec ln --force --symbolic --verbose "$PWD/{}" ~/ \;

# !(pattern1|pattern2|...) : match everything except given pattern
for file in .!(|git|.); do
	ln -fsv "$PWD/$file" ~/
done


