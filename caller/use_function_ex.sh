#!/bin/bash
service=$1

source ../callee/function_ex.sh

myvar=$(get_service_dir)
echo $myvar