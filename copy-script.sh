#!/bin/bash

# create op_folder if it doesn't exist
if [ ! -d "../op_folder" ]; then
    mkdir "../op_folder"
fi

count=1

# loop through all directories in current directory
for dir in */; do
    # get the name of the directory without the trailing slash
    dir_name="${dir%/}"

    # find all image files in the directory
    find "$dir" -maxdepth 1 -type f \( -iname \*.jpg -o -iname \*.jpeg -o -iname \*.png -o -iname \*.gif \) | while read image; do
        # copy the image file to op_folder and rename it with a folder prefix and a number
        cp "$image" "../op_folder/${dir_name}_$count.${image##*.}"

        # increase the count for the next image file in the folder
        ((count++))
    done

    # reset the count for the next folder
    count=1
done
