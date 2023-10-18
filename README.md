# Bash/Zsh Navigation Helper

A simple script to add a custom `nav` function to your `.bashrc` or `.zshrc` file, allowing you to search for and navigate to files or folders on your system.

## Table of Contents
- [Introduction](#introduction)
- [Usage](#usage)
- [Installation](#installation)
- [License](#license)

## Introduction

Have you ever found yourself looking for a file or folder on your system, but couldn't quite remember where it's located? The `nav` function simplifies this process by searching for the specified file or folder and offering a list of locations. You can easily navigate to your desired location with a single command.

## Usage

1. Make sure you have either Bash or Zsh as your default shell.

2. Clone this repository to your local machine or download the `install.sh` script.

3. Make the script executable:
   ```bash
   chmod +x install.sh

# Run the script:
```sh
./install.sh
```

If your ~/.bashrc or ~/.zshrc files exist, the script will add the nav function to the appropriate file.

Restart your shell or run source ~/.bashrc or source ~/.zshrc to apply the changes.

You can now use the nav function in your shell to search for and navigate to files or folders.

# Example:
```sh
nav
```

Follow the prompts to enter the name of the file or folder you're looking for, and choose the location you want to navigate to.
Installation

No additional installation is required. Simply follow the Usage instructions to add the nav function to your shell configuration.
License

This project is licensed under the MIT License - see the LICENSE file for details.
