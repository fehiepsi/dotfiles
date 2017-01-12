alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'
alias vimy='vim ~/.bash_aliases'
alias sc='source ~/.bashrc'
alias c='clear'
alias ..='cd ..'
alias cd..='cd ..'
alias proj='cd ~/projects'
alias dl='cd ~/Downloads'

alias pydata='source activate pydata'
alias pyexit='source deactivate'
alias nb='jupyter notebook'

alias cpu='top'
alias ram='top -o %MEM'
alias gpu='watch nvidia-smi'

alias rmsw='rm .*.sw[pon] ..*.sw[pon]'

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64"
export CUDA_HOME=/usr/local/cuda
