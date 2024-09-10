#!/bin/bash

LOG_PATH="$HOME/projects/study-log"

cd $LOG_PATH
source venv/bin/activate
python log.py
./save.sh
deactivate
cd $HOME
