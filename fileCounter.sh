# A Script that count files in the given folder

#! /bin/bash
# echo "Give the path to count the file (/root/etc): "
# read path
read -p "Give the path to count the file (/root/etc): " path
echo $

if [[ -z "$path" ]]; then
    echo "Error: No path provided. Please try again."
    exit 1
fi

if [[ -d "$path" ]]; then
    echo "Folder exists";
    normal_count=$(find "$path" -maxdepth 1 -type f ! -name ".*" | wc -l)

    hidden_count=$(find "$path" -maxdepth 1 -type f -name ".*" | wc -l)

    echo "The folder contains:"
    echo "- $normal_count normal files"
    echo "- $hidden_count hidden files"

    if [[ $normal_count -eq 0 && $hidden_count -eq 0 ]]; then
        echo "The folder is empty.";
    fi

else
    echo "Error: Folder doesn't exist. Please check the path and try again.";
fi