# Changes to Path
PATH="/usr/local/sbin:$PATH" export PATH

# Aliases
alias ipy='jupyter qtconsole --ConsoleWidget.font_family="Source Code Pro"'
alias slt='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Python: virtualenv aliases
alias virtualenv3='virtualenv -p /usr/local/sbin/python3.5 venv'
alias activate='source venv/bin/activate'

# NVM
export NVM_DIR="/Users/mgreen/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Base-Completion script
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Load Bash profile
source ~/.bash_prompt
