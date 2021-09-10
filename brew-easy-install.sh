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
## Get OS Name
export OS="$(uname)"
## Make sire that homebrew uses the correct core tap.
if [[ "$OS" == "Linux" ]]; then
        ## Set variables for a linux installation.
        HOMEBREW_CORE_DEFAULT_GIT_REMOTE="https://github.com/Homebrew/linuxbrew-core"
        HOMEBREW_CACHE="${HOME}/.cache/Homebrew"
        HOMEBREW_PREFIX_DEFAULT="${HOME}/.brew"
else
        ## Set variables for a macOS installation.
        HOMEBREW_CORE_DEFAULT_GIT_REMOTE="https://github.com/Homebrew/homebrew-core"
        HOMEBREW_CACHE="${HOME}/Library/Caches/Homebrew"
fi

## Don't let brew send analytics during install.
export HOMEBREW_NO_ANALYTICS_THIS_RUN=1
## Don't let homebrew tell us about analytics, as we'll disable them later anyways
export HOMEBREW_NO_ANALYTICS_MESSAGE_OUTPUT=1

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

# Add brew initialization lines to all your rc files.
echo `$HOME/.brew/bin/brew shellenv` >> $HOME/.zshrc
echo `$HOME/.brew/bin/brew shellenv` >> $HOME/.bashrc
echo `$HOME/.brew/bin/brew shellenv` >> $HOME/.profile
echo `$HOME/.brew/bin/brew shellenv` >> $HOME/.bash_profile
echo `$HOME/.brew/bin/brew shellenv` >> $HOME/.zprofile

# Disable Brew analytics
echo 'HOMEBREW_NO_ANALYTICS=1' >> $HOME/.zshrc
echo 'HOMEBREW_NO_ANALYTICS=1' >> $HOME/.bashrc
echo 'HOMEBREW_NO_ANALYTICS=1' >> $HOME/.profile
echo 'HOMEBREW_NO_ANALYTICS=1' >> $HOME/.bash_profile
echo 'HOMEBREW_NO_ANALYTICS=1' >> $HOME/.zprofile

# Set stuff for current shell
export HOMEBREW_NO_ANALYTICS=1
`$HOME/.brew/bin/brew shellenv`

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
