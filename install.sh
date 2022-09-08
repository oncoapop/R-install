#!/bin/bash

# Install the dependencies
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common

# Add the CRAN repository to your system sources’ list
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'

# Install R
sudo apt install r-base

# Check version
R --version

# To compile R packages
sudo apt install build-essential

