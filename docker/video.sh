#!/bin/sh

docker run --name video_container --rm \
--user $(id -u):$(id -g) \
--env TZ=$(cat /etc/timezone) \
--volume /work/stable_diffusion_walk:/data \
linuxserver/ffmpeg:latest \
-r 10 -i /data/output/frame%06d.jpg -vcodec libx264 -crf 25 -pix_fmt yuv420p -s 512x512 /data/landscape.mp4
