#!/bin/bash
# OSX setup

# -- Hombrew ----------------------------------

if exits "brew"; then
  echo_item "Homebrew is installed" green
else
  if get_boolean_response "Do you want to install Homebrew?"; then
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  else
    echo_item "Skipping Homebrew installation" red
  fi
fi

echo ""

