#!/bin/bash

# Install the dependencies
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common

# Add the CRAN repository to your system sources’ list
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'

wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo gpg --dearmor -o /usr/share/keyrings/r-project.gpg
echo "deb [signed-by=/usr/share/keyrings/r-project.gpg] https://cloud.r-project.org/bin/linux/ubuntu jammy-cran40/" | sudo tee -a /etc/apt/sources.list.d/r-project.list

sudo apt update
sudo apt install --no-install-recommends r-base

# Check version
R --version

# To compile R packages
sudo apt install build-essential

