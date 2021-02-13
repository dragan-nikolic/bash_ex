#!/bin/bash
myfile=/etc/profile
if [ -f $myfile ]
then
  echo "File $myfile exists"
else
  echo "File $myfile does not exist"
fi
