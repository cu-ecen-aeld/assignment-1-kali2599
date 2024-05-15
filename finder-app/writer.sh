#!/bin/bash
if [ $# -ne 2 ] ; then 
    echo "Bad usage!"
    echo "Usage: ./writer.sh <FILE_PATH> <STRING_TO_WRITE>"
    exit 1
else
    filename="$1"
    string_to_write="$2"
    parent_dir=$(dirname $filename)
    echo "Filename: $filename"
    #if [ ! -d "$parent_dir" ] ; then 
    #    echo "WRONG PARAMETER"
    #    echo "The path $parent_dir is not an existing directory, please provide a valide parent directory."
    #    exit 1
    #fi
fi

if [ ! -e $filename ] ; then
    echo "The file doesn't extist"
    # read -p "Do you want create the file? (yes/no): " input
    # case $input in
    # "yes") 
    #     echo "Creating the file"
    #     echo "writing on the file"
    #     if [ ! -d $(dirname $filename) ] ; then
    #         mkdir -p $(dirname $filename)
    #     fi
    #     touch "$filename"
    #     echo $string_to_write > $filename ;;
    # *)
    #     echo "Creation aborted" ;;
    # esac
    if [ ! -d $(dirname $filename) ] ; then
             mkdir -p $(dirname $filename)
         fi
         touch "$filename"
         echo $string_to_write > $filename
else
    echo "Writing on the file"
    echo $string_to_write > $filename
fi
echo "-------------------------"
echo "DONE"
