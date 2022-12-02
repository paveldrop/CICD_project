#!bin/bash


clang-format -n src/cat/*.c src/grep/*.c > info
ROWS=$(wc -l < info)
if [$ROWS -gt 0]
then
    exit 1
else
    exit 0
fi
