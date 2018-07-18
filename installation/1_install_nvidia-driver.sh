# Add the PPA of NVIDIA graphics driver
sudo add-apt-repository ppa:graphics-drivers
sudo apt-get update

# This is the latest version of the driver as of July 2018
NV_VER=396

if [ "$1" ]; then
    re='^[0-9]+$'
    if ! [[ $yournumber =~ $re  ]] ; then
        echo "error: Not a number" >&2; exit 1
    fi
    NV_VER=$1
fi

# install the driver
sudo apt-get install nvidia-$NV_VER nvidia-modprobe

# test the installation
nvidia-smi

echo "Done."
