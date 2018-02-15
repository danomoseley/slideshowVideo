#!/bin/bash

$(mkdir -p processed_frames)

i=1
for file in `ls -tr *.jpg` ; do
   newName=$(printf "%04d" $i)
   newFilename="$newName.jpg"
   newPath="processed_frames/$newFilename"
   i=$((i+1))
   $(cp -p "$file" "$newPath")
   $(jhead -q -se -autorot "$newPath")
   $(mogrify -resize 1920x1080 -background black -gravity center -extent 1920x1080 "$newPath")
done

# Need to convert .heic
# Need to sync modified dates of converted files from original .heic
