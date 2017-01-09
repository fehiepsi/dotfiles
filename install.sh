cd ~
sudo apt install git vim tmux unzip tree

mkdir Github
cd Github/
git clone https://github.com/fehiepsi/linux-scripts.git
cd ~
cp Github/linux-scripts/bash_aliases ~/.bash_aliases
cp Github/linux-scripts/vimrc ~/.vimrc
cp Github/linux-scripts/tmux.conf ~/.tmux.conf

cd Downloads/
curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-MacOSX-x86_64.sh
cd ~
conda update conda
conda create -n pydata
source activate pydata
conda install jupyter seaborn scikit-learn pivottablejs qgrid
conda install -c conda-forge pandas-profiling jupyter_contrib_nbextensions
source deactivate

git config --global user.name "fehiepsi"
git config --global user.email "fehiepsi@gmail.com"
