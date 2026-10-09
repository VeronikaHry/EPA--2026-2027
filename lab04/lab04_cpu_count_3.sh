#!/bin/bash

# check that the user supplied the required argument
if [ -z "$1" ]; then
    echo "Usage: lab04_cpu_count_3.sh [MAX_NUM_CORES]"
    exit 1
fi
# check that the argument is a number
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Error: MAX_NUM_CORES must be a number"
    exit 1
fi
# count the number of CPU cores
num_cpu=$(nproc)

# get information about the machine and current time
machine_name=$(hostname)
check_time=$(date)

# display system information
echo "Machine: $machine_name"
echo "Check time: $check_time"

# compare the number of CPU cores with the required value
if [ "$num_cpu" -lt "$1" ]; then
    echo "Error: not enough CPU cores"
else
    echo "OK: enough CPU cores"
fi

# explain the two additional commands
echo "The hostname command identifies the machine where the CPU check was performed."
echo "The date command records when the CPU check was performed."
echo "These commands improve the script by providing useful context about the CPU check."
