#!/bin/bash

CURR_DIR=`pwd`
DEST_DIR="/home/vvverma/public_html"
FOLDER=$1
OUTPUT=`date +%Y%m%d`
check_dir(){
if [[ ! -e $1 ]]; then
    mkdir $1
elif [[ ! -d $1 ]]; then
    echo "$1 already exists" 1>&2
fi
}

if  [[ $FOLDER == '' ]]
then
	echo "Please enter a valid FOLDER name"
	exit 1
fi

cd $DEST_DIR;
check_dir "$FOLDER"
cd $FOLDER;
check_dir "$OUTPUT"
cd "$OUTPUT";
cp -rf $CURR_DIR/images/* .
echo "Copy Finished"
