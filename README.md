# slideshowVideo

1. Install jhead: `sudo apt install jhead`.
2. Download ffmpeg static build: `wget https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-64bit-static.tar.xz`
3. Place all jpg files in folder, video will be ordered by photo file modified date.
4. Run `./makeFramesByModified.sh`, this will process frames into a new subdirectory processed_frames.
5. Run `.makeSlideshowVideo.sh`, this will make a video into ~/Downloads/<timestamp>.mp4.
