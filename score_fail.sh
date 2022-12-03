#!/bin/bash

cd src/cat/
source ./cat_test.sh
cd ../grep/
source grep.sh

if [[ $FAIL1 -gt 0 ]] || [[ $FAIL2 -gt 0 ]]
then
    exit 1
else
    exit 0
fi
