export PATH=$HOME/bin:$PATH

function remote_aliases {
  echo "Setting up remote aliases...";
  #  Remote Aliases
  # =======================

  # Bin Scripts
  alias gc="ref-count"

  # Unix aliases
  alias cl="clear"
  alias eba="vim ~/.bash_aliases"

}

function local_aliases {
  echo "Setting up local aliases...";
  #  Local Aliases
  # =======================
  # Sublime Text
  alias sl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

  # Unix
  alias rd='rm -rf'
  alias ll='ls -alF'
  alias la='ls -A'
  alias l='ls -CF'

  # Git
  alias gs='git status'

  # Personal
  alias mgd=new_journal_entry
}

function general_aliases {
  echo "Setting up general aliases...";
}

function new_journal_entry {
  # create new journal file
  # echo new template code to file
  # open file in sublime text
  sl ~/journal/`date +"%Y-%m-%d"`.md
}

function update_concord {
  ssh misc "cd /var/www-axial/concord; sudo git pull origin master;"
}

function main {
  case $HOSTNAME in
    (mgreen.local) local_aliases;;
    (mgreen.axialmarket.com) remote_aliases;;
  esac
  general_aliases
}

# Run main function
main
