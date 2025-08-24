#! /bin/bash

# Simulate a running app generating logs
LOG_FILE="../logs/app.log"

while true
do
  echo "$(date) - INFO - Application running normally" >> $LOG_FILE
  echo "$(date) - WARN - Minor warning detected" >> $LOG_FILE
  echo "$(date) - ERROR - Critical error occurred!" >> $LOG_FILE
  sleep 1
done
