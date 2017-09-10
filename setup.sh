#!/bin/bash

# script to do it!
pip3 install virtualenv
pip3 install virtualenvwrapper
export WORKON_HOME=~/Envs
mkdir -p $WORKON_HOME

# Then you will need to update your shell profile to allow this to work. 
# Out of the box this looks like its ~/.bashrc. To add to your profile type run these two lines.

export WORKON_HOME=~/Envs >> ~/.bashrc
source /usr/local/bin/virtualenvwrapper.sh >> ~/.bashrc
source ~/.bashrc

# Then you will want to great your own virtualenv. 
mkvirtualenv ${1}
# This will now spin it up the virtual env. You should see your shell bar change a bit 
# You can now run the list of the dependencies.

cd ${2}
pip install -r requirements.txt


