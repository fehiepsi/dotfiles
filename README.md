# linux-scripts

### click to minimize
```sh
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
```

### useful apps
```sh
sudo apt install gcc make
sudo apt install tmux vim
sudo apt install ibus-unikey
sudo apt install obs-studio vlc
sudo apt install goldendict
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
conda create -n pydata python=3.6
```

### python packages
```sh
conda install jupyterlab nodejs pandas seaborn
```

### setup jupyter
```sh
jupyter notebook --generate-config
jupyter notebook password
jupyter labextension install @jupyter-widgets/jupyterlab-manager
```
