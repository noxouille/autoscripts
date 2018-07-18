# First, remove any old version of Docker
sudo apt-get remove docker docker-engine docker.io

sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software=properties-common

# add the GPG key of Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify the finger print is 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88
sudo apt-key fingerprint 0EBFCD88

# tell apt to use the stable repository
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

# update the apt package index and install Docker CE
sudo apt-get update && sudo apt-get install docker-ce

# test the hello-world docker container
sudo docker run hello-world

# Next, we will manage Docker as a non-root user
# add docker group
sudo groupadd docker

# Add the connected user "$USER" to the docker group
sudo gpasswd -a $USER docker

# activate the changes. If this doesn't work, try logout and re-login.
newgrp docker

docker run hello-world

echo "Done."
