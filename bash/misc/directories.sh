#! /bin/bash

for ARG in $(tree -d -i -f -R $1)
do
    if [[ -d $ARG ]]; then
	echo $ARG
    fi
done
