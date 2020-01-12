xhost +si:localuser:$USER
docker run --rm \
    -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
    -ti \
    neondev dolphin
