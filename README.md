# DockerGUI
File dump of containers while trying to learn how to share X11 and Wayland displays with Docker containers
* Trying to share display of host with container so that GUI apps can be run from container

## Relevant Commands
```bash
xhost +local:docker
XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' |
xauth -f $XAUTH nmerge -
```
Reference command to start container
```
docker run -it -v `pwd`/:/mnt --device=/dev/video0 -e DISPLAY=$DISPLAY -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH <image>
```
