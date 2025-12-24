" This file is managed by chezmoi. Always edit it with these commands:
" chezmoi edit {{ .chezmoi.targetFile }}
" chezmoi diff
" chezmoi -v apply

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
