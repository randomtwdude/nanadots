#!/bin/sh
sed -i \
         -e 's/#495159/rgb(0%,0%,0%)/g' \
         -e 's/#eeeeee/rgb(100%,100%,100%)/g' \
    -e 's/#424141/rgb(50%,0%,0%)/g' \
     -e 's/#CFFFE9/rgb(0%,50%,0%)/g' \
     -e 's/#424141/rgb(50%,0%,50%)/g' \
     -e 's/#d3dae3/rgb(0%,0%,50%)/g' \
	"$@"
