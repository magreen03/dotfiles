#!/bin/bash
# Install dotfiles

source 'scripts/helpers/colors.sh'
source 'scripts/helpers/functions.sh'

# -- OSX Setup -----------------------------------------------------------------

if system_is_OSX; then
  source 'scripts/osx_setup.sh'
fi

# -- GIT Config Setup ----------------------------------------------------------

if get_boolean_response "Do you want to install Git config files?"; then
  ln -sf $HOME/.dotfiles/git/gitignore_global $HOME/.gitignore_global
  echo_item "Linked global .gitignore" "green"

  ln -sf $HOME/.dotfiles/git/gitconfig $HOME/.gitconfig
  echo_item "Linked git config file"

else
  echo_item "Didn't install git config" "red"

fi

# -- ZSH Config Setup ----------------------------------------------------------

if exists "zsh"; then

  if get_boolean_response "Do you want to install ZSH config?"; then

    # -- ZSHRC
    ln -sf $HOME/.dotfiles/zsh/zshrc $HOME/.zshrc
    echo_item "Linked zshrc file" "green"

    # -- OH MY ZSH
    if [ -d $HOME/.oh-my-zsh/ ]; then
      echo_item "OH my ZSH is already installed" "green"
    else
      if exists "curl"; then
        curl -L http://install.ohmyz.sh | sh
      elif exists "wget"; then
        wget --no-check-certificate http://install.ohmyz.sh -O - | sh
      else
        echo_item "You need either curl or wget installed to download Oh My ZSH"
      fi
    fi

  else
    echo_item "Did not install ZSH config" "red"
  fi

else
  echo_item "Did not install ZSH" "red"

fi

# -- Bash Profile Setup --------------------------------------------------------

if get_boolean_response "Do you want to install Bash Profile?"; then

  ln -sf $HOME/.dotfiles/bash/bash_profile $HOME/.bash_profile
  echo_item "Installed bash profile" "green"

else
  echo_item "Did not install bash profile" "red"
fi

echo ""

# -- Node Setup ----------------------------------------------------------------

if exists "nvm"; then
  echo_item "NVM already installed" "green"
else
  if get_boolean_response "Do you want to install Node.js tools?"; then
    git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
    . $HOME/.nvm/nvm.sh
    nvm alias default system
    echo_item "Install NVM" "green"
  else
    echo_item "Skipping Node.js tools install" "red"
  fi
fi

# -- VIM Setup -----------------------------------------------------------------
if get_boolean_response "Do you want to install the Neoim configuration file?"
then
  ln -sf $HOME/.dotfiles/nvim/init.vim $HOME/.config/nvim/init.vim
  echo_item "Linked Neovim configuration" "green"
else
  echo_item "Ignoring Neovim configuration" "red"
fi

