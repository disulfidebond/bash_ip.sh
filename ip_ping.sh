#!/bin/sh

while : ; do

CURRIPADDR=$(ipconfig getpacket en1 | grep yiaddr | cut -d= -f2 | cut -d\  -f2) ;
if [ -z "$CURRIPADDR" ] ;
        then echo "No IP address" ;
else echo "Current IP address is ${CURRIPADDR}" ;
fi
sleep 300

done
