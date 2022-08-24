#!/bin/sh

CUR_DIR="$(cd -P "$(dirname "$0")" && pwd)"
ROOT_DIR="$(dirname "$CUR_DIR")"
MOUNT_DIR="/src"

docker run --name stable_diffusion_walk_container --rm \
--user $(id -u):$(id -g) \
--gpus all \
--env CUDA_VISIBLE_DEVICES=3 \
--env TZ=$(cat /etc/timezone) \
--volume /work/data01/beemelmanns/stable_diffusion_walk:/data \
--volume $ROOT_DIR:$MOUNT_DIR \
stable_diffusion_walk \
python $MOUNT_DIR/walk.py --prompt "god creates the earth" --name simulation
