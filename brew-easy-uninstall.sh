# Brew easy uninstall script for APSVA
# By Aaron Rabach
# September 2021
# Only use this if you used my install script from this repo
# It won't work otherwise.

# Set variables again
export DIR="${HOME}/.brew"
export CACHE="${HOME}/Library/Cache/Homebrew"

export RCFILES=(.bashrc .zshrc)

printf "Deleting variables\n\n"
for file in "${RCFILES[@]}"; do sed -i asdf '/HOMEBREW/d' "$HOME/$file"; done
for file in "${RCFILES[@]}"; do rm -rf "${file}asdf"; done
for file in "${RCFILES[@]}"; do sed -i asdf '/brew_init/d' "$HOME/$file"; done
for file in "${RCFILES[@]}"; do rm -rf "${file}asdf"; done

printf "Deleting ~/.brew\n\n"
rm -rf "${DIR}"

printf "Deleting brew's cache"
rm -rf "${CACHE}"

printf "Done!\n"
