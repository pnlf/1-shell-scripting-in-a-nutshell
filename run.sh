#!/bin/bash

# Adds executable permissions and runs scipt that was input on first argument

FILE="$1"
SH_FILE=".sh"

if echo "$FILE" | grep -q "$SH_FILE"; then
    if [ -w $FILE ]; then
        echo "Adding write permission to script $1"
        chmod +x $1
    fi
    echo "Running script $1"
    ./$1 "$2"
else
    echo "Input file is not a shell script"
fi
