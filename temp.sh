xhost +si:localuser:$USER
docker run --rm \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /home/prasenjit/Docker/kdeneon/home:/home/neon \
    -ti \
    neondev_v2 $1
