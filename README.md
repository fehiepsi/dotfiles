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

### useful apps
```sh
sudo apt install git tmux vim putty
sudo apt install obs-studio
sudo apt install goldendict
sudo apt install gnome-tweak-tool
sudo apt install chrome-gnome-shell
```

### setup git
```sh
git config --global user.name 'fehiepsi'
git config --global user.email 'fehiepsi@gmail.com'
git config --global credential.helper 'cache --timeout=3600'
```

### dotfiles
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
conda install jupyterlab
```

### setup jupyter
```sh
jupyter notebook --generate-config
jupyter notebook password
jupyter labextension install @jupyter-widgets/jupyterlab-manager
```
