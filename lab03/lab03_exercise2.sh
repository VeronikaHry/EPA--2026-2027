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

# save the result to a log file with date and time
if [ "$ct" -gt "$1" ]; then
    echo "$(date): Maximum number of processes exceeded" >> process_log.txt
else
    echo "$(date): The maximum number of processes NOT exceeded" >> process_log.txt
fi
