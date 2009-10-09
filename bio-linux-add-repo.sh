#!/bin/bash
# Adds Bio-Linux repository
# tested with Ubuntu 9.04 Jaunty desktop 32-bit
# written by Michael Chelen http://mikechelen.com
# license: Creative Commons Public Domain Zero
# references:
# http://nebc.nox.ac.uk/tools/bio-linux/other-bl-docs/package-repository#Location 
# https://help.ubuntu.com/community/Repositories/CommandLine#Enabling%20Repositories%20with%20a%20%28non-interactive%29%20Script

# add the repository http://nebc.nox.ac.uk/bio-linux/ debian unstable
echo 'deb http://nebc.nox.ac.uk/bio-linux/ unstable bio-linux' >> /etc/apt/sources.list.d/nebc.nox.ac.uk.bio-linux.sources.list

# update
apt-get update

#install the keyring 
apt-get install -y --force-yes bio-linux-keyring
