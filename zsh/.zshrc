export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
 export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="clean"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=()

if [ -f $HOME/dotfiles/env.sh ]; then
    source $HOME/dotfiles/env.sh
fi

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

function paste() {
    curl -n -F 'f:1=<-' http://ix.io
}

PROMPT='%{$fg[$NCOLOR]%}%B%m[%n]%b%{$reset_color%}:%{$fg[blue]%}%B%d%b%{$reset_color%}%(?.. (%{$fg[red]%}%?%{$reset_color%}%)) %(!.#.$) '

export EDITOR=vim
export GPG_TTY=$(tty)
export COLORTERM=yes

source ~/.name_yaself
source ~/.zsh_aliases

#For Rust
source "$HOME/.cargo/env"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#Running jekyll as Non-superuser
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH

#For CS107E class
export CS107E=/mnt/c/Code/LEARNING/cs107e_home/cs107e.github.io/cs107e
export PATH=$PATH:$CS107E/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/mnt/c/Program\ Files\ (x86)/Vim/vim82/

