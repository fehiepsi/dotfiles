alias sc='source ~/.bashrc'
alias c='clear'
alias cd..='cd ..'

alias pydata='source activate pydata'
alias pydev='source activate pydev'
alias pyexit='source deactivate'
alias nb='jupyter notebook --no-browser'
alias lab='jupyter lab --no-browser'

alias cpu='top'
alias ram='top -o %MEM'
alias gpu='watch nvidia-smi'
alias fan='DRI_PRIME=1 glxinfo | grep "OpenGL renderer"'

export PATH="$PATH:/usr/local/cuda/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64"
export CUDA_HOME="/usr/local/cuda"
