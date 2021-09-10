---
title: Brew Installation(No Root Edition)
author: Aaron Rabach
...

# Intro

## Topics

- Why would you need this?
- What do you need to do this?
- How do you do this?

# Why would you need this?

## Background

- Homebrew is a package manager for macOS 
- It is simple, written in Ruby, and has a large selection of packages
	- ~5800 formulae and ~4000 casks at the time of writing.

## What are formulae and casks?

- Formulae are what you normally install from a package manager(apt, pacman, dpkg, nix, kiss, etc.)
- Casks are the magic of homebrew. These are .app packages, which are the apps that you use every day.
	- Things like Zulip, Firefox, and more. This also includes closed-source software like DaisyDisk.

# What do you need?

## Basic tools
- Git
- A C Compiler
- bash
- macOS Mojave or higher

## How to install these tools

- macOS
	- For 2 of these tools(Git and a C Compiler), just run this command in your terminal.
	- `xcode-select --install`

## Other requirements

- You need my script.
- You can find the script at [Github](https://github.com/ModdedGamers/brew-easy-install)
- Download the `brew-easy-install.sh` script, and save that in your Downloads folder.

# How?

## Starting

- Open your terminal.
	- Press Command and Space at the same time, a window should open in the middle of your screen.
	- Type `Terminal.app`, and press Enter.
	- A window with white text and a black background should open. This is the Terminal.

## Installing prerequisites

- Type the following into your terminal:
	- `xcode-select --install`
	- A window should pop up with a progress bar.
	- Click on that window and wait. Please don't do anything else.
	- if you do something else on the system, it may fail and you may need to restart.
	- Once it finishes successfully, let me know and I'll double-check the installation.
	- Installation may take a few minutes, so ask me any questions you want to now.

## Running my script

- Type the next three lines, pressing Enter after each one.
	- `cd Downloads`
	- `xattr -d com.apple.quarantine ./brew-easy-install.sh`
	- `chmod u+rwx ./brew-easy-install.sh`
	- I will explain every command we have run once we are done.
- Next, type this line, and press Enter.
	- `zsh ./brew-easy-install.sh`
- Finally, type this line, and press Enter.
	- `rm -f ./brew-easy-install.sh`

# Commands explanation

## `xcode-select`

- The structure of this command is `xcode-select [flags]`
- Xcode is the text editor designed for running and creating macOS apps.
	- It requires admin to install, and also 10+ GBs of space, so we aren't installing that.
- `xcode-select` is the CLI(Command Line Interface) to a specific set of Xcode features.
	- The feature that we use is the `--install` flag, which installs the Xcode CLTs(Command Line Tools)
	- This allows us to install common developer tools, such as `git` and `clang`, which are the tools we need for this.
- Any questions?

## `cd`

- The structure of this command is `cd [directory]`
- `cd` stands for "Change Directory". It is a command that you can use on any machine that runs Linux or macOS.
- The function of the command is to, well, change directories.
	- Directory is just a fancy name for folder.
- Any questions?

## `xattr`

- The structure of this command is `xattr [flags] [xattr] [file/folder]`
- This command allows you to manipulate `Extended Attributes`, or `xattr`s for short.
- What we do is use the -d flag, which tells it to delete the xattr from the file we specify.
- So in this case, we delete the `com.apple.quarantine` xattr from the `./brew-easy-install.sh` file.
- Any questions?

## `chmod`

- The structure of this command is `chmod [permissions] [file]`
- This command allows you to manipulate the permissions a file has
- The permissions are `r`ead, `w`rite, and e`x`ecute.
- In order to add permissions to the user, you do `u+[permissions]`, and to remove them, you do `u-[permissions]`.
- By changing the plus to a hyphen, we remove the permissions from the file.
- Any questions?

## `rm`

- The structure of this command is `rm [flags] [files/folders]`
- `rm` is used to `r`e`m`ove files and folders.
- We use the `-f` flag to force it to remove the file. __This is a very dangerous thing to do. Don't do it normally.__
- Any questions?

## Misc things

- You may have noticed that we put a `./` before the name of the script.
- This is because the shell will not be able to find the script if we don't do this
- In the shell, `.` stands for the CWD(Current Working Directory). 
	- This means that writing `./` before the name of a script will make it only look for scripts in the current folder.
- Any questions?

# Done! Any more questions?
