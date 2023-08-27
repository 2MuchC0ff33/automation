#!/bin/bash

# This script will check for updates, install them, clean up the system, check whether the system needs a reboot, and notify the user if a reboot is necessary.

# Update the package list.
sudo apt update -y

# Upgrade the system.
sudo apt upgrade -y

# Run autoclean and autoremove.
sudo apt autoremove -y
sudo apt clean -y
sudo apt autoclean -y

# Check whether a reboot is necessary.
if [ -f /var/run/reboot-required ]; then
    echo "Reboot required."
else
    echo "No reboot required."
fi

# End of script.