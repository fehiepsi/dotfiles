# linux-scripts

### click to minimize
```sh
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
```

### useful apps
```sh
sudo apt install gcc make tmux vim ibus-unikey obs-studio vlc goldendict
```

### setup git
```sh
sudo apt install git libsecret-1-dev
cd /usr/share/doc/git/contrib/credential/libsecret
sudo make
git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret
git config --global user.name 'fehiepsi'
git config --global user.email 'fehiepsi@gmail.com'
```

### dotfiles
```sh
cd ~
git clone https://github.com/fehiepsi/linux-scripts.git
cp linux-scripts/bash_aliases .bash_aliases
cp linux-scripts/vimrc .vimrc
cp linux-scripts/tmux.conf .tmux.conf
```

### install conda
```sh
cd ~/Downloads
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
source ~/.bashrc
conda update conda
```

### python packages
```sh
conda create -n pydata python=3.6 jupyterlab nodejs tensorflow-gpu
pydata
conda install -c pytorch pytorch cuda100
jupyter notebook --generate-config
jupyter notebook password
jupyter labextension install @jupyter-widgets/jupyterlab-manager
# edit ~/.jupyter/jupyter_notebook_config.py
#   NotebookApp.iopub_data_rate_limit = 1000000000
#   NotebookApp.iopub_msg_rate_limit = 1000000
pip install nikola pymc3 pystan gpflow gpytorch
```

### r packages
```sh
conda create -n r
conda activate r
conda install -c conda-forge jupyter r-irkernel r-rstan r-coda r-mvtnorm r-devtools
sudo ln -s /bin/tar /bin/gtar
R
library(devtools)
devtools::install_github("rmcelreath/rethinking")
```

