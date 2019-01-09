#!/bin/bash
files=$(ls | xargs)
if [ "$@" = "--replace" ]
then
    cmd="cp -v"
elif [ "$1" = "--link" ]
then
    cmd="ln -v"
else
    echo -e "initFiles: invalid option\nUsage:\tinitFiles [option]\nOptions:\n\t--replace\n\t--link"
    exit
fi

for file in $files
do
    if [ "$file" = $(basename $0) -o "$file" = "config" ]
    then
        continue
    fi
    rm -rf $HOME/.$file
    if [ -d ./$file ]
    then
        cp -r ./$file $HOME/.$file
        echo "'$HOME/$file' => './.$file'"
    else
        $cmd ./$file $HOME/.$file
    fi
done

