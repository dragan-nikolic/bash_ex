#!/bin/bash
SOURCE=${BASH_SOURCE[0]}
echo "SOURCE is $SOURCE"

SOURCEDIR=$(dirname "$SOURCE")
echo "dirname of $SOURCE is $SOURCEDIR"
SOURCEDIR_BASENAME=$(basename "$SOURCEDIR")
echo "basename of $SOURCEDIR is $SOURCEDIR_BASENAME"

CURDIR=$(pwd)
echo "pwd is $CURDIR"

cd "$SOURCEDIR"
NEWPWD=$(pwd)
echo "new pwd is $NEWPWD"
NEWPWD_BASENAME=$(basename "$NEWPWD")
echo "basename of script directory is $NEWPWD_BASENAME"

cd "$CURDIR"
echo Bye!
