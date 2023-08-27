#!/bin/bash

# This script will download fish shell and make it the default shell in Ubuntu Debian.

# Update the package list.
sudo apt update

# Install fish shell.
sudo apt-get install fish

# Make fish the default shell.
chsh -s /usr/bin/fish

# Run autoclean and autoremove.
sudo apt autoclean
sudo apt autoremove

# End of script.