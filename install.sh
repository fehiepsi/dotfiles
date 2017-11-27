# install useful packages
sudo apt install git vim tmux unzip openssh

# git configuration
git config --global user.name "fehiepsi"
git config --global user.email "fehiepsi@gmail.com"

# copy config files
cd ~/Documents
git clone https://github.com/fehiepsi/linux-scripts.git
ln -s $PWD/linux-scripts/bash_aliases ~/.bash_aliases
ln -s $PWD/linux-scripts/vimrc ~/.vimrc
ln -s $PWD/linux-scripts/tmux.conf ~/.tmux.conf
source ~/.bashrc

# install slimux, fugitive, surround, auto-pairs, supertab
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -Lo ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/Downloads
git clone https://github.com/fehiepsi/slimux.git ~/.vim/bundle/slimux
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
git clone https://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround
git clone https://github.com/ervandew/supertab.git ~/.vim/bundle/supertab
git clone https://github.com/jiangmiao/auto-pairs ~/.vim/bundle/auto-pairs

# install conda and pydata stack
cd ~/Downloads
curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
source ~/.bashrc
conda update conda
conda config --append channels conda-forge
conda create -n pydata python=3.5 jupyter matplotlib pandas scikit-learn

# install notebook extensions
source activate pydata
conda install ipdb line_profiler pivottablejs qgrid pandas-profiling jupyter_contrib_nbextensions
conda install -c damianavila82 rise
source deactivate

# install other python libraries
source activate pydata
conda install anaconda-client future seaborn opencv librosa tqdm
pip install xgboost
source deactivate

# install gridsearch stack (optional)
source activate pydata
conda install docopt wrapt networkx pymongo
pip install sacred hyperopt
source deactivate

# install R kernel (optional)
#conda create -n r -c r r-essentials

# install deep learning stack
sudo apt-get install gcc libcupti-dev
# add the following export to ~/.bashrc file
# export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64"
# export CUDA_HOME=/usr/local/cuda
cd ~/Downloads
curl -LO https://developer.nvidia.com/compute/cuda/8.0/prod/local_installers/cuda_8.0.44_linux-run
sudo sh cuda_8.0.44_linux.run # ignore driver and samples
curl -LO https://developer.nvidia.com/compute/machine-learning/cudnn/secure/v5.1/prod/8.0/cudnn-8.0-linux-x64-v5.1-tgz
tar xvzf cudnn-8.0-linux-x64-v5.1-ga.tgz
sudo cp -P cuda/include/cudnn.h /usr/local/cuda/include
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*
source activate pydata
pip install https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.0.1-cp35-cp35m-linux_x86_64.whl
conda install theano h5py
pip install keras
conda install -c soumith pytorch torchvision cuda80
source deactivate

# install gym
source activate pydata
conda install pyglet requests pillow pyopengl imageio olefile
pip install gym[all]
source deactivate

# install MongoDB (optional)
#TODO

# install pyspark scala sql kernels
# https://toree.apache.org/documentation/user/installation.html
#TODO
