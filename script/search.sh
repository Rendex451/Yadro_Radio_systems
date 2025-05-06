#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <file_path> <search_string>"
    exit 1
fi

file_path="$1"
search_string="$2"

if [ ! -f "$file_path" ]; then
    echo "Error: File '$file_path' does not exist."
    exit 1
fi

if [ ! -r "$file_path" ]; then
    echo "Error: File '$file_path' is not readable."
    exit 1
fi

grep "$search_string" "$file_path"

if [ $? -ne 0 ]; then
    echo "No matches found for '$search_string' in '$file_path'."
    exit 0
fi