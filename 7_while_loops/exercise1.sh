#!/bin/bash

# Write a shell script that loops through the /etc/passwd file one line at a time. 
# Prepend each line with a line number followed by a colon and then a space.
 
# Example output:
 
# 1: root:x:0:0:root:/root:/bin/bash
# 2: daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
# 3: bin:x:2:2:bin:/bin:/usr/sbin/nologin
# 4: sys:x:3:3:sys:/dev:/usr/sbin/nologin

LINE_NUM=1
while read LINE
do
    echo "${LINE_NUM}: ${LINE}"
    ((LINE_NUM++))
done < /etc/passwd
