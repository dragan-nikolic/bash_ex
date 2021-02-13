#!/bin/bash

# Find an IP address and port in a file and replace it with 127.0.0.1:80

if [ -f output.txt ]
then
  rm output.txt
fi

sed \
  "s/[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*:[0-9]*/127.0.0.1:80/" \
  <input.txt \
  >output.txt 
