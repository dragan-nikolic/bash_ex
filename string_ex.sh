#!/bin/bash

# check if substr
# ---------------
# use wildcards to check if string is substring of another string
str="today is nice day"
sub="is nice"
if [[ ${str} == *${sub}* ]]
then
  echo "'${sub}' is substring of '${str}'!" 
else
  echo "'${sub}' is NOT substring of '${str}'!" 
fi

sub="zzz"
if [[ ${str} == *${sub}* ]]
then
  echo "'${sub}' is substring of '${str}'!" 
else
  echo "'${sub}' is NOT substring of '${str}'!" 
fi

# split string 
# ------------
# ${var#*SubStr}  # will drop begin of string upto first occur of `SubStr`
# ${var##*SubStr} # will drop begin of string upto last occur of `SubStr`
# ${var%SubStr*}  # will drop part of string from last occur of `SubStr` to the end
# ${var%%SubStr*} # will drop part of string from first occur of `SubStr` to the end
servicever=accountd@develop
echo "service is '${servicever%@*}' - version is '${servicever#*@}'"

mystr=dragan-nikolic
echo "firstname is '${mystr%-*}' - lastname is '${mystr#*-}'"

