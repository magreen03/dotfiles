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
  alias ax_build_admin="cd ~/axm/service/front/; sudo node node_modules/gulp/bin/gulp.js --src_target=admin"
  alias ax_clean_temp="sudo rm -rf ~/axm/service/front/build && sudo rm -rf ~/axm/service/front/temp"
  alias ax_gulp="cd ~/axm/service/front && sudo node ~/axm/service/front/node_modules/gulp/bin/gulp.js"
  alias ax_servs="sudo svstat /service/* | column -t"
  alias ax_logs='tail -F /var/log/axm/events.log | sed "s/#012/\n/g"'
  alias ax_pg="psql -U axial -d axial"
  alias ax_db_up="cd ~/axm/share/migrations/ && alembic upgrade +1"
  alias ax_root="cd ~/axm"
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
  alias mgd=new_journal_entry
}

function general_aliases {
  echo "Setting up general aliases...";
}

function new_journal_entry {
  # create new journal file
  # echo new template code to file
  # open file in atom
  atom ~/journal/`date +"%Y-%m-%d"`.md
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
