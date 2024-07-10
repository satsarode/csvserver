#!/bin/bash

# Check if two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 start_index end_index"
    exit 1
fi

# Read the arguments
start_index=$1
end_index=$2

# Define the output file name
output_file="inputFile"

# Create or truncate the file
> $output_file

# Generate the content
for ((i = start_index; i <= end_index; i++)); do
    random_number=$((RANDOM % 1000))  # Generate a random number between 0 and 999
    echo "$i, $random_number" >> $output_file
done

# Confirm the file has been created
echo "File '$output_file' has been generated with the following content:"
cat $output_file
