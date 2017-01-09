# install useful packages
sudo apt install git vim tmux unzip tree

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

# install conda and pydata stack
cd ~/Downloads
curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-MacOSX-x86_64.sh
source ~/.bashrc
conda update conda
conda create -n pydata
source activate pydata
conda install jupyter matplotlib pandas scikit-learn nose
source deactivate

# install notebook extensions
source activate pydata
conda install ipdb line_profiler pivottablejs qgrid psutil
conda install -c conda-forge pandas-profiling jupyter_contrib_nbextensions
conda install -c damianavila82 rise
source deactivate

# install other python libraries
source activate pydata
conda install future seaborn opencv h5py
conda install -c conda-forge tqdm
pip install xgboost
source deactivate

# install gridsearch stack (optional)
source activate pydata
conda install docopt wrapt networkx pymongo
pip install sacred hyperopt
source deactivate

# install R kernel (optional)
conda create -n r -c r r-essentials

# install MongoDB (optional)
#TODO

# install deep learning stack
#TODO theano tensorflow keras gym cuda

# install pyspark scala sql kernels
# https://toree.apache.org/documentation/user/installation.html
#TODO
