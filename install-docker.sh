#!/usr/bin/env bash

# Install Docker CE on Ubuntu per
# https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/

set -e # Exit if any subcommand fails
set -x # Print commands for troubleshooting

# 1. Update the apt package index:

sudo apt-get --yes --quiet update

# 2. Install packages to allow apt to use a repository over HTTPS:

sudo apt-get --yes --quiet install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# 3. Add Docker’s official GPG key:

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify that you now have the key with the fingerprint 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88, by searching for the last 8 characters of the fingerprint.

sudo apt-key fingerprint 0EBFCD88

# 4. Use the following command to set up the stable repository. You always need the stable repository, even if you want to install builds from the edge or test repositories as well. To add the edge or test repository, add the word edge or test (or both) after the word stable in the commands below.
#DOCKER_REPOS="stable edge"
DOCKER_REPOS="stable"

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   $DOCKER_REPOS"

# INSTALL DOCKER CE

# 1. Update the apt package index.

sudo apt-get --yes --quiet update

# 2. Install the latest version of Docker CE, or go to the next step to install a specific version. Any existing installation of Docker is replaced.

sudo apt-get install --yes --quiet docker-ce

# 4. Verify that Docker CE is installed correctly by running the hello-world image.

sudo docker run hello-world
