# Read Me

## Run Container

sudo docker run -it \
    --rm \
    --privileged \
    --shm-size=1G \
    -p 10001:3389 \
    -u $(id -u):$(id -g) \
    -e USER=mint \
    -e PASSWD=mint \
    sabotagecla6/mint-19.3-xrdp:earliest


