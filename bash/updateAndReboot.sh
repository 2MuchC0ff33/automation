#!/bin/bash

# This script will check for updates, install them, clean up the system, check whether the system needs a reboot, and notify the user if a reboot is necessary.

# Update the package list.
sudo apt update -y

# Upgrade the system.
sudo apt upgrade -y

# Check if a reboot is necessary.
if needs-restarting; then
    echo "Reboot required."
    sudo reboot
else
    echo "No reboot required."
fi

# Clean up the system.
sudo apt autoremove -y
sudo apt clean -y
sudo apt autoclean -y

# End of script.
