#!/bin/bash
test_suite=all

if [ "$test_suite" == "all" ]; then
  echo "OK: test_suite is all and is supposed to be"
else
  echo "ERROR: test_suite is not all but is supposed to be"
fi

FD_ACCEPTANCE=acceptance
FD_RPM=mysteam
FD_PROV=callee

service_dir=""
if [ "$test_suite" == "functionals" ]
then
  service_dir=$FD_RPM
  echo "ERROR: test_suite is functionals but is not supposed to be"
elif [ "$test_suite" == "all" ]
then
  service_dir=$FD_PROV
  echo "OK: test_suite is all and is supposed to be"
else
  service_dir=$FD_ACCEPTANCE
  echo "ERROR: test_suite is not functional nor all but is supposed to be all"
fi

echo $service_dir
pwd
cd $service_dir
pwd

if [ "$test_suite" != "all" ]
then
  echo "ERROR: test_suite is not all but is supposed to be"
else
  echo "OK: test_suite is all and is supposed to be"
fi

if [ $(echo dragan) == "dragan" ]
then
  echo "OK: echo dragan == dragan"
else
  echo "ERROR: echo dragan != dragan"
fi

# get info about tdocker fddev-1
fddev_info=$(docker ps -a | grep fddev-1)
echo $fddev_info

# check if docker is running
# use wildcards to check if string is substring of another string
if [[ $fddev_info == *fddev-1* ]]
then
  echo "fddev-1 is running"
else
  echo "fddev-1 is not running"
fi

