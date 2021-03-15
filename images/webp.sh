#!/bin/sh

images='find . -type f -name *.jpg -or -name *.jpeg -or -name *.png -or -name *JPG'

for image in $images;
do
    cwebp $image -o $image".webp" >/dev/null 2>&1
done
