# First, make sure wget is installed
sudo apt-get install -y wget

CUDA_VER=9.2
CUDA_FILE=cuda_9.2.88_396.26_linux

# then, we download CUDA
wget https://developer.nvidia.com/compute/cuda/$CUDA_VER/Prod/local_installers/$CUDA_FILE
# or go to https://developer.nvidia.com/cuda-downloads to manually download the runfile

# extract the downloaded file
chmod +x $CUDA_FILE
./$CUDA_FILE --extract=$PWD

# You should have unpacked three components:
NV_DRIVER=NVIDIA-Linux-x86_64-396.26.run #(NVIDIA driver that we ignore),
CUDA_INSTALLER=cuda-linux.9.2.88-23920284.run #(CUDA 9.2 installer), and
CUDA_SAMPLES=cuda-samples.9.2.88-23920284-linux.run #(CUDA 9.0 Samples).

# run the installer and hit the "d" key and enter "accept", and accept the defaults.
sudo ./$CUDA_INSTALLER

# To verify CUDA installation, install the sample test by
sudo ./$CUDA_SAMPLES

# After the installation finishes, configure the runtime library.
sudo bash -c "echo /usr/local/cuda/lib64/ > /etc/ld.so.conf.d/cuda.conf"
sudo ldconfig

sudo vim /etc/environment
# then add :/usr/local/cuda/bin (including the ":") at the end of the PATH="/blah:/blah/blah" string.

sudo reboot

# continue at the post_reboot script
