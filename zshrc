# General PATH
export PATH="/opt/homebrew/bin:$PATH"
# export PATH="/Applications/Racket v8.11.1/bin:$PATH"
export PATH="/usr/local/bin/docker:$PATH"
export PATH="$PATH:/Users/jasonmok/Desktop/isd/vcpkg"

# Initialize Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
source $ZSH/oh-my-zsh.sh

# Load additional configurations
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Developer Tools
eval "$(thefuck --alias)"
export KOLIBRI_RUN_MODE="dev"

# Initialize NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
