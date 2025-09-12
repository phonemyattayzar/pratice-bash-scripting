#!/bin/bash

# ${VAR%PATTERN} → remove shortest suffix matching PATTERN

# ${VAR%%PATTERN} → remove longest suffix matching PATTERN

# ${VAR#PATTERN} → remove shortest prefix

# ${VAR##PATTERN} → remove longest prefix

#rename files that end in .bad to be .bash

for file in *.bash
do 
  mv "${file}" "${file%bash}bash"
done