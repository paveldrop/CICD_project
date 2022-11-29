#!bin/bash


clang-format -n src/cat/*.c src/grep/*.c > info
wc -l < info

