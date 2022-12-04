#!/bin/bash

scp -p22 -o stricthostkeychecking=no -o userknownhostsfile=/dev/null ./src/cat/s21_cat provemen_deploy@10.20.0.20:/home/provemen_deploy
scp -p22 -o stricthostkeychecking=no -o userknownhostsfile=/dev/null ./src/grep/s21_grep provemen_deploy@10.20.0.20:/home/provemen_deploy
ssh -p22 provemen_deploy@10.20.0.20 "echo -e "kidalovo" | sudo -S mv s21* /usr/local/bin"
