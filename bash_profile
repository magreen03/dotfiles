# Changes to Path
PATH="/usr/local/sbin:$PATH" export PATH

# Aliases
alias ipy='jupyter qtconsole --ConsoleWidget.font_family="Source Code Pro"'
alias sl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Aliases
#  - Axial
alias axm='ssh -A mgreen@mgreen.axialmarket.com'

# Python: virtualenv aliases
alias virtualenv3='virtualenv -p /usr/local/bin/python3 venv'
alias activate='source venv/bin/activate'

# pip should only run if virtualenv is activated
export PIP_REQUIRE_VIRTUALENV=true

gpip() {
  PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code/python
source /usr/local/bin/virtualenvwrapper.sh

# NVM
export NVM_DIR="/Users/mgreen/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Bash-Completion script
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# GO Setup
export GOPATH="${HOME}/code/go"
export PATH=$PATH:$GOPATH/bin

# Log every bash command
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'

# Load Bash prompt
source ~/.bash_prompt
