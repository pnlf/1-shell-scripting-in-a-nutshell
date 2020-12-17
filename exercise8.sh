
#!/bin/bash

# Modify the previous script to accept an unlimited number of files and directories as arguments.

for IN_VAL in $@ # Change
do
    if [ -f "$IN_VAL" ]; then
        echo "$IN_VAL is a regular file"
    elif [ -d "$IN_VAL" ]; then
        echo "$IN_VAL is a directory"
    else
        echo "$IN_VAL is an other type of file (not regular or directory)"
    fi
    ls -l $IN_VAL
done

