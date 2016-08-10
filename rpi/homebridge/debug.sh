docker stop homebridge
docker rm homebridge
./build.sh
./run.sh
docker logs --follow homebridge
