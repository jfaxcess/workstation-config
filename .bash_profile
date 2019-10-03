if [ -n "$TMUX" -a -f /etc/profile ]; then
  PATH=""
  source /etc/profile
fi

RESET="\[\e[0m\]"
BOLD="\[\e[1m\]"
DIM="\[\e[2m\]"

DEFAULT="\[\e[39m\]"
RED="\[\e[31m\]"
GREEN="\[\e[32m\]"
YELLOW="\[\e[33m\]"
BLUE="\[\e[34m\]"
MAGENTA="\[\e[35m\]"
CYAN="\[\e[36m\]"
LT_GRAY="\[\e[37m\]"
GRAY="\[\e[90m\]"
LT_RED="\[\e[91m\]"
LT_GREEN="\[\e[92m\]"
LT_YELLOW="\[\e[93m\]"
LT_BLUE="\[\e[94m\]"
LT_MAGENTA="\[\e[95m\]"
LT_CYAN="\[\e[96m\]"
WHITE="\[\e[97m\]"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export GIT_PS1_SHOWCOLORHINTS=1
TERMINATOR="➣ "
PROMPT_COMMAND='__git_ps1 "${LT_BLUE}\u${CYAN}@\h ${LT_GREEN}\w${DEFAULT}" "${YELLOW}${TERMINATOR} ${DEFAULT}"'

set -o vi

export LSCOLORS="Exfxcxdxbxegedabagacad"

PYTHON_PATH=~/Library/Python/3.6/bin
export PATH=$PATH:$PYTHON_PATH

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

nvm alias default 8

GPG_TTY=$(tty)
export GPG_TTY

export PATH="/usr/local/opt/curl/bin:$PATH"

[ -f ~/.bash_alias.sh ] && . ~/.bash_alias.sh

export EDITOR="vim"

export HISTCONTROL=ignoreboth

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-10.jdk/Contents/Home"

export PATH=~/bin:$JAVA_HOME/bin:$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

