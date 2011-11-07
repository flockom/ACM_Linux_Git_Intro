#! /bin/bash

NAME=./res/trashcan_$1.sh
mkdir -p res
cpp -P -D $1 trashcan.sh.template > $NAME
chmod 755 $NAME
less $NAME
