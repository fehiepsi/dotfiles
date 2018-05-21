alias sc='source ~/.bashrc'
alias c='clear'
alias cd..='cd ..'

alias pydata='conda activate pydata'
alias nb='jupyter notebook --no-browser'
alias lab='jupyter lab --no-browser'

alias cpu='top'
alias ram='top -o %MEM'
alias gpu='watch nvidia-smi'
alias fan='DRI_PRIME=1 glxinfo | grep "OpenGL renderer"'

export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export CUDA_HOME=/usr/local/cuda
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH:+${LD_LIBRARY_PATH}:}/usr/local/cuda/extras/CUPTI/lib64
