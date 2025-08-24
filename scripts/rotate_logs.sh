#!/bin/bash
LOG_FILE="../logs/app.log"
BACKUP_DIR="../backups"
MAX_LINES=10   # rotate after 10 lines (for testing; in production use bigger number)

mkdir -p $BACKUP_DIR

while true
do
  LINE_COUNT=$(wc -l < $LOG_FILE)
  if [ "$LINE_COUNT" -ge "$MAX_LINES" ]; then
      TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
      ROTATED_FILE="$BACKUP_DIR/app_$TIMESTAMP.log"
      
      # Move current log to backup folder
      mv $LOG_FILE $ROTATED_FILE
      echo "$(date) - INFO - Log rotated to $ROTATED_FILE" >> $ROTATED_FILE

      # Compress old log
      tar -czf "$ROTATED_FILE.tar.gz" -C $BACKUP_DIR "$(basename $ROTATED_FILE)"
      rm "$ROTATED_FILE"

      # Create new empty log file
      touch $LOG_FILE
  fi
  sleep 2
done

