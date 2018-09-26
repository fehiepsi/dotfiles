alias sc='source ~/.bashrc'
alias c='clear'
alias cd..='cd ..'

alias cpu='top'
alias ram='top -o %MEM'
alias gpu='watch nvidia-smi'

alias pydata='conda activate pydata'
alias nb='jupyter notebook --no-browser'
alias lab='jupyter lab --no-browser'

alias bt='echo 0 | gdb -batch-silent -ex "run" -ex "set logging overwrite on" -ex "set logging file gdb.bt" -ex "set logging on" -ex "set pagination off" -ex "handle SIG33 pass nostop noprint" -ex "echo backtrace:\n" -ex "backtrace full" -ex "echo \n\nregisters:\n" -ex "info registers" -ex "echo \n\ncurrent instructions:\n" -ex "x/16i \$pc" -ex "echo \n\nthreads backtrace:\n" -ex "thread apply all backtrace" -ex "set logging off" -ex "quit" --args'

export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export CUDA_HOME=/usr/local/cuda
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH:+${LD_LIBRARY_PATH}:}/usr/local/cuda/extras/CUPTI/lib64

function sshlab {
  if [ $# -eq 0 ]; then
    ssh fehiepsi@141.223.xx.xxx -p 2224 -L 8887:localhost:8887
  else
    ssh fehiepsi@141.223.xx.xxx -p 2224 -L "$1":localhost:"$1"
  fi
}

function sshlab2 {
  if [ $# -eq 0 ]; then
    ssh fehiepsi@141.223.xx.xxx -p 22 -L 8887:localhost:8887
  else
    ssh fehiepsi@141.223.xx.xxx -p 22 -L "$1":localhost:"$1"
  fi
}
