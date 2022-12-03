#!/bin/bash


scp src/cat/s21_cat provemen_deploy@10.20.0.20:/home/provemen_deploy
scp src/grep/s21_grep provemen_deploy@10.20.0.20:/home/provemen_deploy
ssh provemen_deploy@10.20.0.20
cd /home/provemen_deploy
mv s21* /usr/local/bin
