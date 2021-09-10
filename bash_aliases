alias bt='echo 0 | gdb -batch-silent -ex "run" -ex "set logging overwrite on" -ex "set logging file gdb.bt" -ex "set logging on" -ex "set pagination off" -ex "handle SIG33 pass nostop noprint" -ex "echo backtrace:\n" -ex "backtrace full" -ex "echo \n\nregisters:\n" -ex "info registers" -ex "echo \n\ncurrent instructions:\n" -ex "x/16i \$pc" -ex "echo \n\nthreads backtrace:\n" -ex "thread apply all backtrace" -ex "set logging off" -ex "quit" --args'
alias c='clear'
alias cd..='cd ..'
alias clean='find . -name .ipynb_checkpoints -prune -exec rm -r {} +'
alias cpu='top'
alias gitrb="git for-each-ref --count=10 --sort=-committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias gpu='watch nvidia-smi'
# alias lab='jupyter lab --port 8889'
alias lab='jupyter lab --no-browser'
# alias nb='jupyter notebook --port 8889'
alias nb='jupyter notebook --no-browser'
# alias pydata='source ~/pydata/bin/activate'
alias pydata='conda activate pydata'
# alias ram='top -o MEM'
alias ram='top -o %MEM'
alias sc='source ~/.bash_aliases'

export EDITOR='vim'
export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/extras/CUPTI/lib64
export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}

bindkey -v
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.oh-my-zsh/cache

function sshlab {
  if [ $# -eq 0 ]; then
    ssh fehiepsi@x.x.x.x -p 2222 -L 8888:localhost:8888
  else
    ssh fehiepsi@x.x.x.x -p 2222 -L "$1":localhost:"$1"
  fi
}
