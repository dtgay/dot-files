#!/bin/bash

if [ $1 -a $2 ]
then
    WEEK="$1"
    DAY="$2"
    stapler cat /var/tmp/cover.pdf $WEEK-$DAY.pdf PHYS-111-02-$WEEK-$DAY.pdf
else
    echo "Provide week number and day number" 1>&2
    exit 1
fi
