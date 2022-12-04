#!/bin/bash


scp -p22 src/cat/s21_cat provemen_deploy@10.20.0.20:/home/provemen_deploy
scp -p22 src/grep/s21_grep provemen_deploy@10.20.0.20:/home/provemen_deploy
ssh -p22 provemen_deploy@10.20.0.20 "ls -a"
