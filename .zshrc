# Homebrew
export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
export PATH=/home/linuxbrew/.linuxbrew/sbin:$PATH
export MANPATH=/home/linuxbrew/.linuxbrew/share/man:$MANPATH

# Zsh plugins
eval "$(sheldon source)"

# Go
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

# ghq
alias repo='cd $(ghq list --full-path --exact| peco)'

# uv
eval "$(uv generate-shell-completion zsh)"

# Starship
eval "$(starship init zsh)"

# compdef
autoload -Uz compinit
compinit
