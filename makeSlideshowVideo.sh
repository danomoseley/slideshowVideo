#!/bin/bash

numFrames=$(ls -1 test/*.jpg | wc -l)
startFade=`expr $numFrames - 5`
timestamp=$(date +%s)

$(~/Downloads/ffmpeg-git-20180208-64bit-static/ffmpeg -framerate 1/1 -i processed_frames/%04d.jpg -i ~/Downloads/home.mp3 -shortest -af "afade=out:st=$startFade:d=5" -c:v libx264 -c:a aac -r 30 -pix_fmt yuv420p -shortest ~/Downloads/$timestamp.mp4)
