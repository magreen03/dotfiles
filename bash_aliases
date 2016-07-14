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

  # Axial aliases
  alias build_amdin="cd ~/axm/service/front/; sudo node node_modules/gulp/bin/gulp.js --src_target=admin"
  alias axms="sudo svstat /service/* | column -t"
  alias axmg="node ~/axm/service/front/node_modules/gulp/bin/gulp.js"
  alias axml='tail -F /var/log/axm/events.log | sed "s/#012/\n/g"'
}

function local_aliases {
  echo "Setting up local aliases...";
  #  Local Aliases
  # =======================
  # Axial
  alias dev='ssh axial-dev'
  alias misc='ssh -A mgreen@52.202.123.92'
  alias update_concord=update_concord

  # iPython
  alias ipy='jupyter qtconsole --ConsoleWidget.font_family="Source Code Pro"'

  # Python: virtualenv aliases
  alias virtualenv3='virtualenv -p /usr/local/bin/python3 venv'
  alias activate='source venv/bin/activate'

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
  alias diary='atom ~/journal/`date +"%Y-%m-%d"`.md'
}

function general_aliases {
  echo "Setting up general aliases...";
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
