# Bash Aliases
# ===============================
alias ll='gls -ahCG --color=auto'
alias ebash='vim ~/.bash_profile'
alias rbash='. ~/.bash_profile'

# Sublime Text Alias
# ===============================
alias sl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Xero Aliases
# ===============================
XERO_DIR="~/xero_dev/"
alias eac="sl ${XERO_DIR}Xero/ && sl ${XERO_DIR}contacts-autocompleter/ && sl ${XERO_DIR}ContactsAutoCompleter/"

# GO Setup
# =======================
#export GOPATH="${HOME}/code/go"
#export PATH=$PATH:$GOPATH/bin

# NVM Setup
# =======================
export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Virtualenvwrapper Setup
# =======================
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Code/Python
#source /usr/local/bin/virtualenvwrapper.sh

# Load Bash prompt
# =======================
source ~/dotfiles/bash_prompt
# Changes to Path
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
PATH="$PATH:~/mg_scripts" export PATH
