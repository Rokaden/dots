#!/bin/sh
sed -i \
         -e 's/#3d3c3b/rgb(0%,0%,0%)/g' \
         -e 's/#b6a49b/rgb(100%,100%,100%)/g' \
    -e 's/#3d3c3b/rgb(50%,0%,0%)/g' \
     -e 's/#b6a49b/rgb(0%,50%,0%)/g' \
     -e 's/#3d3c3b/rgb(50%,0%,50%)/g' \
     -e 's/#b6a49b/rgb(0%,0%,50%)/g' \
	$@
