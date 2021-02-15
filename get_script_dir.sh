#!/bin/bash

# This script demonstrate:
# - how to change working directory to the script directory
# - and move back to the original directory
#
# Run this script from a location different from the script location (e.g. run
# it from your home directory)

# get the filepath of the script (path + filename)
SCRIPTPATH=${BASH_SOURCE[0]}
echo "SCRIPTPATH is $SCRIPTPATH"

SCRIPTDIR=$(dirname "$SCRIPTPATH")
echo "dirname of $SCRIPTPATH is $SCRIPTDIR"

# save current directory
CURDIR=$(pwd)
echo "pwd is $CURDIR"

# move to the script directiry
cd "$SCRIPTDIR"
NEWPWD=$(pwd)
echo "new pwd is $NEWPWD"

# back to directory from where the script was started
cd "$CURDIR"
echo Bye!
