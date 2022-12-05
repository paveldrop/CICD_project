#!/bin/bash


clang-format -n src/cat/*.c src/grep/*.c >> info 2>&1

ROWS=$(wc -l < info)
rm info
if [ $ROWS -gt 0 ]
then
    exit 1
else
    exit 0
fi
