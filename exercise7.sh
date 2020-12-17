#!/bin/bash

# Modify the previous script so that it accepts the file or directory name as an 
# argument instead of prompting the user to enter it.

IN_VAL="$1" # Change

if [ -f "$IN_VAL" ]; then
    echo "$IN_VAL is a regular file"
elif [ -d "$IN_VAL" ]; then
    echo "$IN_VAL is a directory"
else
    echo "$IN_VAL is an other type of file (not regular or directory)"
fi

ls -l $IN_VAL