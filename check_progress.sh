#!/bin/bash

statusFile="$HOME/checagem_processo/status.txt"
pidFile="$HOME/checagem_processo/pid.txt"

[ -z $(<$pidFile) ] &&
    echo "DOWN" | tee $statusFile &&
    exit

[ -n "$(ps aux | grep -v grep | grep $(<$pidFile))" ] && 
    echo "RUNNING" | tee $statusFile || 
    echo "FINISHED" | tee $statusFile

[ $(<$statusFile) = "FINISHED" ] && > $pidFile

