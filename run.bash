image=$1
workspace=$2

docker run -it \
  --privileged \
  --ipc host \
  --network host \
  --env DISPLAY=$DISPLAY \
  --volume /dev:/dev \
  --volume /tmp:/tmp \
  --volume $workspace:/workspace \
  $image \
  /bin/bash
