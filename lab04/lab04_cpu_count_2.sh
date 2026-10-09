#!/bin/bash

# check that the user supplied the required argument
if [ -z "$1" ]; then
    echo "Usage: lab04_cpu_count_2.sh [MAX_NUM_CORES]"
    exit 1
fi
# check that the argument is a number
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Error: MAX_NUM_CORES must be a number"
    exit 1
fi
# count the number of CPU cores
num_cpu=$(nproc)

# compare the number of CPU cores with the required value
if [ "$num_cpu" -lt "$1" ]; then
    echo "Error: not enough CPU cores"
    exit 1
else
    echo "OK: enough CPU cores"
fi
