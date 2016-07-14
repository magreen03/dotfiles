# Changes to Path
PATH="/usr/local/sbin:$PATH" export PATH


# Load Bash Alias file
source ~/.bash_aliases;
# if test -f "~/dotfiles/bash_aliases"; then
#  ln -s ~/dotfile/bash_aliases ~/.bash_aliases;
#  echo "loaded aliases...";
#fi


# Environment Vars
# =======================
# pip should only run if virtualenv is activated
export PIP_REQUIRE_VIRTUALENV=true

gpip() {
  PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code/python
source /usr/local/bin/virtualenvwrapper.sh

# GO Setup
export GOPATH="${HOME}/code/go"
export PATH=$PATH:$GOPATH/bin

# NVM
export NVM_DIR="/Users/mgreen/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# Bash-Completion script
# =======================
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi


# Log every bash command
# =======================
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'


# Load Bash prompt
# =======================
source ~/.bash_prompt;
