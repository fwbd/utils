#!/bin/bash
# unpack zip into a directory created from the file name

IFS=""

for zip in $*
do 
  mkdir "${zip%.zip}" 
  cd "${zip%.zip}" 
  unzip "../${zip}" 
  cd .. 
done
