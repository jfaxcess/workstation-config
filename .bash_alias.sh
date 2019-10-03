alias gs='git status -s -uno '
__git_complete gs _git_status
alias ga='git add '
__git_complete ga _git_add
alias gb='git branch '
__git_complete gb _git_branch
alias gc='git commit '
__git_complete gc _git_commit
alias gd='git diff '
__git_complete gd _git_diff
alias go='git checkout '
__git_complete go _git_checkout
alias gf='git fetch '
__git_complete gf _git_fetch
alias gp='git pull -p '
__git_complete gp _git_pull
alias gk='gitk --all&'

alias ls='ls -GF'
alias ..='cd ..'

alias vim=nvim
alias spacevim='/usr/local/bin/vim -u ~/.vim_Space/vimrc '
alias svim=spacevim
#alias vim="vim -T xterm-256color"
alias PlugUpdate="vim +':PlugUpgrade' +':PlugUpdate' +'q' +':qa'"
alias git=hub

alias mongoclient-start="docker start practical_meitner"
alias mongoclient-stop="docker stop practical_meitner"

alias notes="vim ~/Documents/worknotes.otl"

alias doAuth="~/bin/doAuth"

source ~/bin/rmBranch-completion
source ~/bin/whatChangedSince-completion
