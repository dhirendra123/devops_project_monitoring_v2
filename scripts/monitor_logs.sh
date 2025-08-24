#!/bin/bash
LOG_FILE="../logs/app.log"

echo "Monitoring logs from $LOG_FILE ..."
echo "Press CTRL+C to stop."

# Highlight different levels in real-time
tail -f $LOG_FILE | grep --color=auto -E "INFO|WARN|ERROR"

