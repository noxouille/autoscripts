cd /usr/local/cuda-9.0/samples
sudo make
# the process above will take some time

# after it completes, run the following
cd /usr/local/cuda/samples/bin/x86_64/linux/release
./deviceQuery
# if deviceQuery works, your installation is successful.
# remember to rm the 4 files (1 downloaded and 3 extracted).

# Check out your CUDA version
nvcc -V

echo "Done."
