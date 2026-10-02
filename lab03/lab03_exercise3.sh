#!/bin/bash

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

# create the result message
if [ "$ct" -gt "$1" ]; then
    message="Maximum number of processes exceeded"
else
    message="The maximum number of processes NOT exceeded"
fi

# choose whether to display the result or write it to a file
if [ "$2" = "screen" ]; then
    echo "$message"
elif [ "$2" = "file" ]; then
    echo "$(date): $message" >> process_log.txt
else
    echo "Please choose screen or file"
fi
