#!/bin/bash

# count the number of CPU cores
num_cpu=$(nproc)

# compare the number of CPU cores with the required value
if [ "$num_cpu" -lt "$1" ]; then
    echo "Error: not enough CPU cores"
    exit 1
else
    echo "OK: enough CPU cores"
fi
