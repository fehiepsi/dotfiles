cd ~
[ ! -d ~/dotfiles ] && git clone https://github.com/fehiepsi/dotfiles
cp dotfiles/bash_aliases .bash_aliases
cp dotfiles/tmux.conf.local .tmux.conf.local
cp dotfiles/vimrc.local .vimrc.local
ln -s dotfiles/tmux.conf .tmux.conf
ln -s dotfiles/vimrc .vimrc
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
