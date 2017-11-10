sudo apt-get install openssh-server -y
ssh-keygen -t rsa
ssh-copy-id host

sudo apt-get install git -y
sudo apt-get install zsh -y
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# apt-get install oh-my-zsh -y
vi ~/.zshrc -> bira

# install nvidia driver
# List all driver versions
apt-cache search nvidia | grep -P '^nvidia-[0-9]+\s'

sudo add-apt-repository ppa:graphics-drivers
sudo apt-get update
sudo apt-get install nvidia-370
lsmod | grep nvidia

# Avoid to automatic update driver
sudo apt-mark hold nvidia-370

# Install CUDA Toolkit
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda
# After this step need to disable secure boot, otherwise third-party softwares could not work properly

# Verify cuda version
cat /usr/local/cuda/version.txt
nvidia-smi
# http://xcat-docs.readthedocs.io/en/stable/advanced/gpu/nvidia/verify_cuda_install.html

# Install cuDNN
# Download cuDNN from this (runtime.deb and dev.deb)
# https://developer.nvidia.com/rdp/cudnn-download
sudo dpkg -i libcudnn7_7.0.3.11-1+cuda9.0_amd64.deb
sudo dpkg -i libcudnn7-dev_7.0.3.11-1+cuda9.0_amd64.deb
sudo apt-get install libcudnn7
sudo apt-get install libcudnn7-dev

# Verify cuDNN
# Download sample from the cuDNN link
# copy example to another folder
sudo dpkg -i libcudnn7-doc_7.0.3.11-1+cuda9.0_amd64.deb
cp -r /usr/src/cudnn_samples_v7 test
cd test/cudnn_samples_v7/mnistCUDNN/
make clean && make
./mmistCUDNN -> Passed

# Intall this
sudo apt-get install libcupti-dev

# Install tensorflow
# Install python venv
apt-get install python3-venv

# uninstall cuda 9.0 and cuDNN 7.0
sudo apt-get autoremove --purge cuda 
sudo apt-get autoremove --purge cuDNN

# Reinstall cuda 8.0 and cuDNN 6.0 -> work on GTX 1050 Ti



