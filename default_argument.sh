#!/bin/bash
myvar=$1
myvar=${myvar:=dragan}
# myvar=${1:=dragan}  DOES NOT WORK
echo $myvar
