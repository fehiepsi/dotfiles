# install useful packages
sudo apt install git vim tmux unzip tree openssh

# git configuration
git config --global user.name "fehiepsi"
git config --global user.email "fehiepsi@gmail.com"

# copy config files
cd ~/Downloads
git clone https://github.com/fehiepsi/linux-scripts.git
cp linux-scripts/bash_aliases ~/.bash_aliases
cp linux-scripts/vimrc ~/.vimrc
cp linux-scripts/tmux.conf ~/.tmux.conf
source ~/.bashrc

# install slimux and fugitive
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -Lo ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/Downloads
curl -Lo slimux-master.zip https://github.com/fehiepsi/slimux/archive/master.zip
unzip slimux-master.zip
mv slimux-master ~/.vim/bundle/slimux
curl -Lo vim-fugitive-master.zip https://github.com/tpope/vim-fugitive/archive/master.zip
unzip vim-fugitive-master.zip
mv vim-fugitive-master ~/.vim/bundle/vim-fugitive
vim -u NONE -c "helptags ~/.vim/bundle/vim-fugitive/doc" -c q

# install conda and pydata stack
cd ~/Downloads
curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
source ~/.bashrc
conda update conda
conda create -n pydata jupyter matplotlib pandas scikit-learn nose

# install notebook extensions
source activate pydata
conda install ipdb line_profiler pivottablejs qgrid psutil
conda install -c conda-forge pandas-profiling jupyter_contrib_nbextensions
conda install -c damianavila82 rise
source deactivate

# install other python libraries
source activate pydata
conda install future seaborn opencv h5py cython joblib
conda install -c conda-forge tqdm librosa
pip install xgboost
source deactivate

# install gridsearch stack (optional)
source activate pydata
conda install docopt wrapt networkx pymongo
pip install sacred hyperopt
source deactivate

# install R kernel (optional)
conda create -n r -c r r-essentials

# install deep learning stack
sudo apt-get install gcc libcupti-dev 
cd ~/Downloads
curl -LO https://developer.nvidia.com/compute/cuda/8.0/prod/local_installers/cuda_8.0.44_linux-run
tar xvzf cuda_8.0.44_linux.run
sudo sh cuda_8.0.44_linux.run # ignore driver and samples
curl -LO https://developer.nvidia.com/compute/machine-learning/cudnn/secure/v5.1/prod/8.0/cudnn-8.0-linux-x64-v5.1-tgz
tar xvzf cudnn-8.0-linux-x64-v5.1-ga.tgz
sudo cp -P cuda/include/cudnn.h /usr/local/cuda/include
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*
source activate pydata
pip install https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-0.12.1-cp35-cp35m-linux_x86_64.whl
pip install Theano keras
source deactivate

# install MongoDB (optional)
#TODO

# install pyspark scala sql kernels
# https://toree.apache.org/documentation/user/installation.html
#TODO
