#!/bin/bash

# Write a shell script that displays one random number to the screen 
# and also generates a syslog message with that random number. Use 
# the "user" facility and the "info" facility for your messages.
# Hint: Use $RANDOM

RAND_VAL=$RANDOM
echo $RAND_VAL
logger -p user.info "$RAND_VAL"