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

# Verify cuda version
cat /usr/local/cuda/version.txt
