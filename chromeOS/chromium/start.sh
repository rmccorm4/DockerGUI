docker build -t chromium .
# --net=host is required! This will not display the GUI without it.
docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" chromium 
