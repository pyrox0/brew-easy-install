# brew-easy-install

This is a script to easily install https://brew.sh to your home directory in `~/.brew`.

Disclaimers: This installs to a non-standard prefix, so don't be surprised if you end up compiling a lot of stuff from source.

Make an issue if you encounter any problems!


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

## APCSP Students
Type the following in the Terminal: `brew install node`. This will take a longer time then the first command, and a lot more will happen
That's OK.
Once that finishes, type `node` and press enter. If you get a prompt that looks like `>`, then you are good. Press Control and "D" at the same
time to exit. You're done!


## CSC 205 Students
Run these 2 commands:

`brew tap moddedgamers/retro-tools`

and

`brew install asl gkermit most simh minicom`

This project is licensed under Creative Commons Zero v1.0 Universal. Use it as you see fit. See LICENSE file for more details.
