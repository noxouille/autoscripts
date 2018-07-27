VER=18.07

# Stop and remove all Docker containers
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

# Remove these 2 test images we used before
docker rmi nvidia/cuda:latest hello-world:latest

# Download frameworks
docker pull nvcr.io/nvidia/tensorflow:$VER-py3
docker pull nvcr.io/nvidia/mxnet:$VER-py3
docker pull nvcr.io/nvidia/caffe:$VER-py2
docker pull nvcr.io/nvidia/caffe2:$VER-py3
docker pull nvcr.io/nvidia/cntk:$VER-py3
docker pull nvcr.io/nvidia/pytorch:$VER-py3
docker pull nvcr.io/nvidia/digits:$VER
