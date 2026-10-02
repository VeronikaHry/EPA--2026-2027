#!/bin/bash

# this is a comment

# how do we pass parameters from the command line
# into this bash script. 
# we use the notation $1, $2 etc to represent
# the first, second etc parameter into this script
# check that the user passed a number
if [ -z "$1" ]; then
    echo "Please provide the maximum number of processes"
    exit 1
fi

# count the number of running processes
ct=$(ps -ef | wc -l)

# compare the current number of processes with the user input
if [ "$ct" -gt "$1" ]; then
    echo "Maximum number of processes exceeded"
else
    echo "The maximum number of processes NOT exceeded"
fi
