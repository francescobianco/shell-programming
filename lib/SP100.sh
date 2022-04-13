#!/usr/bin/env bash

conditions="true,true;true,;,true;,"

for pair in ${conditions//;/ } ; do
  condition1="${pair%%,*}"
  condition2="${pair#*,}"

  ##  PSEUDO-CODE
  ##  -----------
  ##
  ##  IF condition1 THEN
  ##    value := 1
  ##  ELSE IF condition2 THEN
  ##    value := 2
  ##  ELSE
  ##    value := 3
  ##  END
  ##
  [ -n "$condition2" ] && value="2" || value="3"
  [ -n "$condition1" ] && value="1"

  echo "condition1 = '$condition1', condition2 = '$condition2', value = '$value'"
done
