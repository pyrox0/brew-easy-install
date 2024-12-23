#!/usr/bin/env bash
# Brew Easy Installer for APSVA
# By Pyrox
# Created on 30-31 August 2021
# Works on macOS and linux, requires no sudo
# Installs to $HOME/.brew

# Set variables
##Set directory where we install brew
export DIR="${HOME}/.brew"
## Set URL for brew download
export URL="https://github.com/Homebrew/brew/tarball/master"

export RC_SETUP="
  brew_init () { eval \$(\$HOME/.brew/bin/brew shellenv) }
  brew_init
  export HOMEBREW_NO_ANALYTICS=1
  alias brew_cleanup=\"brew cleanup -s\"
  HOMEBREW_CASK_OPTS=\"--appdir=~/Applications\"
  HOMEBREW_INSTALL_BADGE=\"🐧\"
  export PATH=\"\$HOME/.brew/bin:\$HOME/.brew/sbin:\$HOME/.brew/opt/*/bin:\$HOME/.brew/opt/*/sbin:\$PATH\"
"

## Don't let brew send analytics during install.
export HOMEBREW_NO_ANALYTICS_THIS_RUN=1
## Don't let homebrew tell us about analytics, as we'll disable them later anyways
export HOMEBREW_NO_ANALYTICS_MESSAGE_OUTPUT=1
## Make array of rcfiles
export RCFILES=(".zshrc .bashrc .profile")
# Make the directory for the brew install.
mkdir "${DIR}"
# Ensure that your .zshrc exists
touch "${HOME}/.zshrc"
# Ensure that your .bashrc exists
touch "${HOME}/.bashrc"

# Download the tarball
printf "Downloading tarball...\n"
curl -L ${URL} | tar xz --strip 1 -C ${DIR}

printf "Setting up shell environment...\n"

for file in ${RCFILES[@]} ;do echo "${RC_SETUP}" >> "$HOME/$file"; done

# Disclaimers
printf "\nDisclaimers:\n\n"
printf "Since this uses a non-standard prefix, most things will be built\n"
printf "from source.\n\n "
printf "Things may take a while. Please yell at APS to let us install brew normally\n\n"
printf "Pyrox is not responsible for any stupid things that you \n"
printf "\"brew install\". Thanks!\n\n"
printf "Done!"
