#!/bin/bash

# Check if correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_directory> <target_directory>"
    exit 1
fi

# Assign input and target directories to variables
source_dir=$1
target_dir=$2

# Check if source directory exists
if [ ! -d "$source_dir" ]; then
    echo "Source directory does not exist: $source_dir"
    exit 1
fi

# Check if source directory exists
if [ ! -d "$source_dir" ]; then
    echo "Target directory does not exist: $target_dir"
    exit 1
fi

# Move files from source directory to target directory
echo "Moving files from $source_dir to $target_dir..."
mv -v "$source_dir"/* "$target_dir"

exit 0
