#!/bin/bash
case $1 in
blue)
  echo "1 $1"
  ;;
red)
  echo "2 $1"
  ;;
"yellow")  # yellow and "yellow" are considered same
  echo "3 $1"
  ;;
called_from_case)
  ./$1.sh  # here it calls script passed as argument
  ;;
*)
  echo "default"
  ;;
esac 