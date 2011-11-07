#! /bin/bash

if [ -z $2 ]; then
    SEARCH=""
else
    SEARCH="-P $2"
fi

if [ -z $3 ]; then
    EXCEPT=""
else
    EXCEPT="-I $3"
fi

for ARG in $(eval "tree -i -f -R $1 $SEARCH $EXCEPT")
do
    if [ -f $ARG ]; then
	echo $ARG
    fi
done
