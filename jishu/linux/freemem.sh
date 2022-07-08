#!/bin/bash
z=`free -m | awk '/Mem:/ {print int($3/($3+$4)*100)}'`

if [ $z -gt 75 ]
then
    sync
    echo 3 > /proc/sys/vm/drop_caches
    sudo echo `date +%Y%m%d%H%M%S` $z >>/home/freemem/freemem.log
fi
