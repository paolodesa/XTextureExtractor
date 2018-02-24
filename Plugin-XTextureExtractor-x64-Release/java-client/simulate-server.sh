#!/bin/bash

while [ 1 ]; do
    
    echo "Starting simulated server on port 52500"
    (
	echo "XTEv2 Feb 23 2018 00:15:02
ZB738
2048 2048
ND 524 1550 1018 2038
HSI 9 1538 516 2043
EICAS 1040 1550 1527 2028
EICAS-2 1533 1551 2038 2037
CDU 10 544 540 1023
__EOF__" | dd ibs=4096 conv=sync count=1 2> /dev/null
	
	while [ 1 ]; do
	    printf '!_\000_'
	    cat ../app/src/main/res/drawable-nodpi/ic_hsi.png
	done
	
    ) | nc -l 52500
done