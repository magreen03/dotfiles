# Changes to Path
PATH="/usr/local/sbin:$PATH" export PATH
PATH="/usr/local/bin:$PATH" export PATH
PATH="$PATH:`yarn global bin`" export PATH

# Load Bash Alias file
source ~/.bash_aliases;
# if test -f "~/dotfiles/bash_aliases"; then
#  ln -s ~/dotfile/bash_aliases ~/.bash_aliases;
#  echo "loaded aliases...";
#fi


# Environment Vars
# =======================
# pip should only run if virtualenv is activated

# GO Setup
#export GOPATH="${HOME}/code/go"
#export PATH=$PATH:$GOPATH/bin

# NVM
export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# Bash-Completion script
# =======================
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi


# Load Bash prompt
# =======================
source ~/.bash_prompt;
