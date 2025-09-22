#!/bin/bash
set -e
read -p "Enter User Name: " USERNAME
read -p "Enter Group ID: " GROUPID
read -p "Enter Home Directory for user: " HOMEDIR
CMD="useradd"

if [ -n $USERNAME ]; then
   CMD+="$USERNAME"

fi

if [ -n $GROUPID ]; then
  CMD+="-g $GROUPID"

fi

if [ -n $HOMEDIR ]; then
  CMD+="-m $HOMEDIR"

fi

CMD


