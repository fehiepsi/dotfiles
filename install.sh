# install useful packages
sudo apt install git vim tmux unzip openssh

# config git
git config --global user.name "fehiepsi"
git config --global user.email "fehiepsi@gmail.com"

# copy config files
cd ~
git clone https://github.com/fehiepsi/linux-scripts.git
ln -s $PWD/linux-scripts/bash_aliases ~/.bash_aliases
ln -s $PWD/linux-scripts/vimrc ~/.vimrc
ln -s $PWD/linux-scripts/tmux.conf ~/.tmux.conf
source ~/.bashrc

# install conda and pydata stack
cd ~/Downloads
curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
source ~/.bashrc
conda update conda
cd ~/linux-scripts
conda env create -f pydata.yml
conda activate pydata
jupyter notebook password
jupyter labextension install @jupyter-widgets/jupyterlab-manager
