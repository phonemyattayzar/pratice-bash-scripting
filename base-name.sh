#!/bin/bash

# You have a full file path, for example
FULLPATHTOFILE="/home/user/docs/report.txt"

# You want just the filename (report.txt) without the directories.
FILE=$(basename $FULLPATHTOFILE)


# Or Another Way

NEWFILE=${FULLPATHTOFILE##*/}


# You have a full file path, for example
MYPATHTOFILE="/home/user/docs/report.txt"

# You want just the directory part (/home/user/docs) without the filename.
DIR=$(dirname $MYPATHTOFILE)

# Or

DIR=${MYPATHTOFILE%/*}
