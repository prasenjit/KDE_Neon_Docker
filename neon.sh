# give the docker application access to X
xhost +si:localuser:$USER
# run a throwaway session with dolphin
docker run --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    -e XDG_CURRENT_DESKTOP=$XDG_CURRENT_DESKTOP \
    -ti shaw/kdeneon-dev-stable:latest konsole
