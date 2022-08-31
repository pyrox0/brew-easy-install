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
then, type `brew` and press enter to test. Once that's done, type `brew tap homebrew/core`, and then proceed to the appropriate section below.

## Warnings
### IF YOU HAVE RUN THIS BEFORE, DON'T RUN THIS AGAIN!
It doesn't check for previous installation lines, so it will add cruft to your rc file. Therefore, don't run this more than once without deleting the installation lines from your rc files first.

## APCSP Students - 1st/2nd Quarter
Type the following in the Terminal: `brew install node`. This will take a longer time then the first command, and a lot more will happen. That's OK.

Once that finishes, type `node` and press enter. If you get a prompt that looks like `>`, then you are good. Press Control and "D" at the same
time to exit. You're done!


## APCSP Students - 4th Quarter
Type the following in the terminal: `brew install python@3.10`, then `brew install sqlite`, then `brew install python-tk@3.10`. Next, type in `brew link --force tcl-tk`. Then, in a new terminal tab(Type <kbd>Cmd</kbd> and <kbd>t</kbd> at the same time) type `python3 -m pip install gasp`. Then, type in `python3`, press <kbd>Enter</kbd>, and type in the following:

```python
from gasp import *
```
If this prints nothing, then you were successful in installing GASP.

## ITE 140 Students
Type the following in the terminal, pressing <kbd>Enter</kbd> after each command

```sh
brew install python@3.10
python3 -m pip install --upgrade pip
python3 -m pip install numpy
python3 -m pip install pandas
```
After this, you should be good to go!


## CSC 205 Students
Run these 2 commands:

`brew tap thehedgehog0/retro-tools`

and

`brew install asl gkermit most simh minicom`

This project is licensed under Creative Commons Zero v1.0 Universal. Use it as you see fit. See LICENSE file for more details.
