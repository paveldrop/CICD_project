#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

cd src/cat/
source ./cat_test.sh
cd ../grep/
source grep.sh

if [[ $FAIL1 -gt 0 ]] || [[ $COUNTER_FAIL -gt 0 ]]
then
    echo -e "${RED}Intergration tests FAILED${NC}"
    exit 1
else
    echo -e "${GREEN}Integration tests successfully PASSED${NC}"
    exit 0
fi
