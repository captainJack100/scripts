#!/bin/bash

MEM=`free | awk 'FNR == 3 {print $3/($3+$4)*100}'`
THRESHOLD=75

if awk "BEGIN {exit $MEM > $THRESHOLD ? 0 : 1}"
	then
		[ ! -f MEMFILE ] && ps aux | sort -nk +4 > MEMFILE
		
fi

