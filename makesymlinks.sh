#!/usr/bin/env bash

################################################################
#
# makesymlinks.sh
#
# This script creates symlinks from the home directory to any
# desired dotfiles in ~/dotfiles
#
################################################################

DIR=~/dotfiles
OLDDIR=~/dotfiles.old
FILES="bashrc vimrc vim bash_aliases"

#############

# create dotfiles_old in homedir
echo "Creating $OLDDIR for backup of any existing dotfiles in ~"
mkdir -p $OLDDIR
echo "...done"

# change to the dotfiles directory
echo "changing to the $DIR directory"
cd $DIR
echo "...done"

# move any existing dotfiles in homedir to $OLDDIR, then create symlinks
for file in $FILES; do
    echo "Moving any existing dotfiles from ~to $OLDDIR"
    mv ~/.${file} $OLDDIR
    echo "Creating symlink to $file in home directory"
    ln -s $DIR/$file ~/.${file} 
done




