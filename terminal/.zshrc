# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Custom aliases
alias vim='nvim'
alias ls='ls --color=auto'
alias repoinfo="onefetch"
alias dbstart="sudo systemctl start mariadb"
alias dbstop="sudo systemctl stop mariadb"
alias dkstart="sudo systemctl start docker"
alias dkstop="sudo systemctl stop docker.socket; sudo systemctl stop docker"
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
# list all active ssh tunnels
alias lstunnels="sudo lsof -i -n | grep -E '\<ssh\>'"
alias pa="php artisan"
alias pym="python manage.py"
alias pvc="virtualenv .venv"
alias pva="source .venv/bin/activate"
alias pvd="deactivate"
alias sail="./vendor/bin/sail"
alias spa="sail php artisan"
alias db="sudo mysql -e"
alias pdb="sudo -u postgres psql"

alias tn="tmux new"
alias tl="tmux attach"
alias ta="tmux attach -t"

# Up/Down arrow search
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "\e[A" up-line-or-beginning-search # Up
bindkey "\e[B" down-line-or-beginning-search # Down

# Correct functioning of Ctrl + arrow or home and end keys
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
bindkey '\e[H' beginning-of-line
bindkey '\e[F' end-of-line

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Git
autoload -Uz compinit && compinit

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/bin:$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
