#!/bin/bash
# Script 4: Log File Analyzer
# Author: Lavish Varshney

# --- Input ---
LOGFILE=$1
KEYWORD=${2:-"error"}   # default keyword = error
COUNT=0

# --- Check file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# --- Check if file is empty (retry logic like do-while) ---
while [ ! -s "$LOGFILE" ]; do
    echo "Warning: File is empty. Waiting for logs..."
    sleep 2
done

# --- Read file line by line ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Output result ---
echo ""
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# --- Show last 5 matching lines ---
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
