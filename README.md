# linux-scripts

### click to minimize
```sh
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
```

### remove firefox, install chromium
```sh
sudo apt purge firefox
sudo apt install chromium-browser
```

### useful packages
```sh
sudo apt install git tmux vim putty
```

### setup git
```sh
git config --global user.name "fehiepsi"
git config --global user.email "fehiepsi@gmail.com"
```

### config files
```sh
cd ~
git clone https://github.com/fehiepsi/linux-scripts.git
ln -s $PWD/linux-scripts/bash_aliases ~/.bash_aliases
ln -s $PWD/linux-scripts/vimrc ~/.vimrc
ln -s $PWD/linux-scripts/tmux.conf ~/.tmux.conf
```

### install conda
```sh
cd ~/Downloads
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
source ~/.bashrc
conda update conda
conda env create -n pydata python=3.6
```

### python packages
```sh
source activate pydata
conda install jupyterlab
```

### setup jupyter
```sh
jupyter notebook password
jupyter labextension install @jupyter-widgets/jupyterlab-manager
```

### install obs-studio
```sh
sudo apt install obs-studio
```
