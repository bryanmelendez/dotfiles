#!/bin/bash

LOG_PATH="$HOME/projects/study-log"
SAVE_PATH="$notes/spaces/life/study-log"

# Copy the current study log save to the program directory
cp -v $SAVE_PATH/study_log.md $LOG_PATH
mv -v $LOG_PATH/study_log.md $LOG_PATH/study_log.yaml
# Copy the current study log save to my archives
cp -v $SAVE_PATH/study_log.md $notes/.trash
# run the program
cd $LOG_PATH
source venv/bin/activate
python log.py
./save.sh
deactivate
cd $HOME
