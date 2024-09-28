#!/bin/bash

LOG_PATH="$HOME/projects/study-log"
SAVE_PATH="$notes/spaces/life/study-log"

# Copy the current study stats save to the program directory
cp -v $SAVE_PATH/study_stats.md $LOG_PATH
mv -v $LOG_PATH/study_stats.md $LOG_PATH/study_stats.yaml
# Copy the current study stats save to my archives
cp -v $SAVE_PATH/study_stats.md $notes/.trash
# run the program
cd $LOG_PATH
source venv/bin/activate
python study_stats.py
./save_stats.sh
deactivate
cd $HOME

cat $SAVE_PATH/study_stats.md

