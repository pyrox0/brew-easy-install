# Brew easy uninstall script for APSVA
# By Aaron Rabach
# September 2021
# Only use this if you used my install script from this repo
# It won't work otherwise.

# Set variables again
export DIR="${HOME}/.brew"

export RCFILES=(.bashrc .bash_profile .zshrc .profile .zprofile)

printf("Deleting variables...")
for file in "${RCFILES[@]}"; do sed -i asdf '/HOMEBREW/d' "$file"; done

printf("Deleting ~/.brew...")
rm -rf "${DIR}"

printf("Done!")

