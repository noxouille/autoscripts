# Download the cudnn files from the NVIDIA website:
# https://developer.nvidia.com/rdp/cudnn-download

CUDNN_FILE=cudnn-9.2-linux-x64-v7.1.tgz
LOCAL_DIR=/usr/local

# copy the file to /usr/local
sudo cp $CUDNN_FILE $LOCAL_DIR

# Install cudnn
cd $LOCAL_DIR
sudo tar -xzvf $CUDNN_FILE

# update the shared library cache
sudo ldconfig

# cleanup
sudo rm $LOCAL_DIR/$CUDNN_FILE

# checkout your cudnn version
cat $LOCAL_DIR/cuda/include/cudnn.h | grep CUDNN_MAJOR -A 2

echo "Done."
