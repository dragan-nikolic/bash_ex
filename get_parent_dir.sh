#!/bin/bash

# This script demonstrates how to get parent directory of a directory

# parent directory of working directory 
parentdir_of_pwd=$(dirname $(pwd))
echo working directory is $(pwd)
echo parent directory of working directory is $parentdir_of_pwd

# directory of this script
script=${BASH_SOURCE[0]}
scriptdir=$(dirname "$script")
echo this script is $script
echo script directory is $scriptdir

# parent directory of this script's directory
parent_scriptdir=$(dirname "$scriptdir")
echo parent of script directory is $parent_scriptdir
