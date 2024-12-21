# A Script that count files in the given folder

#! /bin/bash
# echo "Give the path to count the file (/root/etc): "
# read path
read -p "Give the path to count the file (/root/etc): " path
echo $path

if [[ -d "$path" ]]; then
    echo "Folder exists";
    normal_count=$(find "$path" -maxdepth 1 -type f ! -name ".*" | wc -l)

    hidden_count=$(find "$path" -maxdepth 1 -type f -name ".*" | wc -l)

    echo "The folder contains $normal_count normal files and $hidden_count hidden files";
else
    echo "Folder doesn't exist";
fi