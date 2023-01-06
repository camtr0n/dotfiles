#set -x

# homebrew + shell
eval "$(/opt/homebrew/bin/brew shellenv)"

# dotfiles
export DEV=$HOME/Developer
export DOTFILES=$DEV/.dotfiles
export PATH="$DOTFILES/bin:$PATH"
export PATH="$DOTFILES/plugins/pure:$PATH"
fpath+=($DOTFILES/plugins/pure)

# sublime text
export PATH="$PATH:/Applications/Sublime Text.app/Contents/SharedSupport/bin"

# conda
export PATH=/usr/local/anaconda3/bin:$PATH
export PATH=/opt/homebrew/anaconda3/bin:$PATH
export CONDA_AUTO_ACTIVATE_BASE=false

# pyenv
export VIRTUAL_ENV_DISABLE_PROMPT=false
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init - zsh)"

# dbt
export DBT_ARTIFACT_STATE_PATH=target/prod/
export DBT_DEFER_TO_STATE=true
