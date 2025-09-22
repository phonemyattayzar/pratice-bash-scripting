#!/bin/sh

for file in *.JPG
do 
  mv "$file" "${file,,}"
done
