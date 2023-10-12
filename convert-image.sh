#!/bin/bash
convertion(){
cd /home
CONVERT=/usr/bin/convert
for image in *.jpg
do
    if [ -f "$image" ]; then
	local filename="${image%.jpg}"
        "$CONVERT" "$image" "${filename}.png"
    else
        echo "File $image not found."
	exit 1
    fi
done
}
convertion
