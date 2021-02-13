#!/bin/bash
suite=rpm
subsuite=functional

if [ $suite == rpm ]
then
  if [ $subsuite == functional ]
  then
    echo "OK: rpm and functional :)"
  fi
fi
