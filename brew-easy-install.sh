#!/usr/bin/env bash
# Brew Easy Installer for APSVA
# By Aaron Rabach
# Created on 30-31 August 2021
# Works on macOS and linux, requires no sudo
# Installs to $HOME/.brew


# Set variables
##Set directory where we install brew
export DIR="${HOME}/.brew"
## Set URL for brew download
export URL="https://github.com/Homebrew/brew/tarball/master"

## Don't let brew send analytics during install.
export HOMEBREW_NO_ANALYTICS_THIS_RUN=1
## Don't let homebrew tell us about analytics, as we'll disable them later anyways
export HOMEBREW_NO_ANALYTICS_MESSAGE_OUTPUT=1
## Make array of rcfiles
export RCFILES=(".zshrc .bashrc")
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

for file in "${RCFILES[@]}" ;do echo 'brew_shellenv_cmd="$HOME/.brew/bin/brew shellenv"' >> "$HOME/$file"; done
for file in "${RCFILES[@]}" ;do echo 'eval ${brew_shellenv_cmd}' >> "$HOME/$file"; done
# Add brew initialization lines to all your rc files.
for file in "${RCFILES[@]}" ;do echo 'export HOMEBREW_NO_ANALYTICS=1' >> "$HOME/$file"; done
# Make brew only install from api, no local repo clones
for file in "${RCFILES[@]}" ;do echo 'export HOMEBREW_INSTALL_FROM_API=1' >> "$HOME/$file"; done

# Disclaimers
printf "\nDisclaimers:\n\n"
printf "Since this uses a non-standard prefix, most things will be built\n"
printf "from source.\n\n "
printf "Please try to avoid \"brew install\"ing anything while others are\n"
printf "using the system.\n\n "
printf "Talk to your system administrator to install brew as a user,\n"
printf "so that you can use more bottles and install from source more.\n\n"
printf "Aaron Rabach is not responsible for any stupid things that you \n"
printf "\"brew install\". Thanks!\n\n"


printf "Done! Please try running \"brew\" to verify you've installed correctly!\n"

