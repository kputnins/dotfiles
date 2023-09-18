# Uses https://www.zapzsh.org/
# Uses DejaVu Sans Mono font
# Download fonts with https://github.com/ronniedroid/getnf

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "zap-zsh/sudo"
plug "MichaelAquilina/zsh-you-should-use"

# Load and initialise completion system
autoload -Uz compinit
compinit

plug "chivalryq/git-alias"
plug "zap-zsh/completions"

# Custom entries
# NVM
source /usr/share/nvm/init-nvm.sh

# pnpm
export PNPM_HOME="/home/kp/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
# Created by `pipx` on 2023-06-29 14:04:16
export PATH="$PATH:/home/kp/.local/bin"

# history size
HISTSIZE=5000
SAVEHIST=5000

export EDITOR='nano'
export YSU_MESSAGE_POSITION="after"

# Aliases
# git
alias g="git"

# npm package managers
alias y="yarn"
alias pp="pnpm"
alias pps="pnpm start"

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# ls replacement
alias ls='exa'
alias lsa='ls -al --color=auto'
alias lsl='ls -l --color=auto'

# cat replacement
alias cat='bat'

# htop replacement
alias htop='btop'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB