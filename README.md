# brew-easy-install for APS students

This is a script to easily install https://brew.sh to your home directory in `~/.brew`.

Disclaimers: This installs to a non-standard prefix, so don't be surprised if you end up compiling a lot of stuff from source.

Make an issue if you encounter any problems!

# Xcode Install Steps
* Open a terminal.
* Copy and paste this in: `xcode-select --install`
* Press <kbd>Enter</kbd>
* Press install, and accept the license agreement.
* If it says you don't have enough space, follow the instructions in the "Free Up Space" section below.
* Wait for it to finish, then follow from the "Common Installation Steps" section!

# Free Up Space
If you don't use GarageBand, please follow these steps first.
* Open the Apple menu in the top left.
* Click "About This Mac"
* Click the "Storage" button
* Click "Manage Storage"
* Click "Music Creation" on the left side
* Press the removal button in the middle and confirm it. This will free up 20GB of storage on your computer.

# Common Installation Steps
Right-click and click "Save as..." on [this link.](https://raw.githubusercontent.com/ModdedGamers/brew-easy-install/main/brew-easy-install.sh)
Next, press Command and the spacebar at the same time, type in "Terminal"(without quotes), and press Enter.
Next, type this in and press enter:

`sh Downloads/brew-easy-install.sh`

Once that gives you your prompt back, open a new terminal tab by pressing Command and "T" at the same time.
then, type `brew` and press enter to test. Once that's done, proceed to the appropriate section

## Bash Users
If you installed this before 6 December 2021, and you get `brew: command not found` when  you type `brew`, try running this command: `cp ~/.bashrc ~/.profile`. This will copy your `.bashrc` to the file `.profile`. This is a macOS-specific behavior of bash, and mainly happens on pre-Catalina machines as there, the default shell is bash.

## Warnings
### IF YOU HAVE RUN THIS BEFORE, DON'T RUN THIS AGAIN!
It doesn't check for previous installation lines, so it will add cruft to your rc file. Therefore, don't run this more than once without deleting the installation lines from your rc files first.

## APCSP Students - 1st/2nd Quarter
Type the following in the Terminal: `brew install node`. This will take a longer time then the first command, and a lot more will happen. That's OK.

Once that finishes, type `node` and press enter. If you get a prompt that looks like `>`, then you are good. Press Control and "D" at the same
time to exit. You're done!


## APCSP Students - 4th Quarter
Type the following in the terminal: `brew install python`. Then type `python3 -m pip install 'gasp[games]'`. Then, start `python` and type in the following:

```python
from gasp import *
```

If this prints nothing, then you were successful in installing GASP.

## CSC 205 Students
Run these 2 commands:

`brew tap moddedgamers/retro-tools`

and

`brew install asl gkermit most simh minicom`

This project is licensed under Creative Commons Zero v1.0 Universal. Use it as you see fit. See LICENSE file for more details.
