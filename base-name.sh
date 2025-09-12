#!/bin/bash

# You have a full file path, for example
FULLPATHTOFILE="/home/user/docs/report.txt"

# You want just the filename (report.txt) without the directories.
FILE=$(basename $FULLPATHTOFILE)


# Or Another Way

NEWFILE=${FULLPATHTOFILE##*/}
