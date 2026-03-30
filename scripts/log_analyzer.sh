#!/bin/bash

# ==============================================================================
# Script Name: log_analyzer.sh
# Purpose: Analyze log files and count keyword occurrences.
# Author: Khushal
# Project: The Open Source Audit (Capstone Project for OSS Course)
# ==============================================================================

# Variables as per instructions
STUDENT_NAME="Khushal"
SOFTWARE_CHOICE="Firefox"

echo "------------------------------------------------------------"
echo "Log Analyzer by $STUDENT_NAME"
echo "Target Software: $SOFTWARE_CHOICE"
echo "------------------------------------------------------------"

# Section 1: Argument Check
if [ $# -eq 0 ]; then
    echo "Usage: $0 <log_file_path>"
    echo "Example: $0 $HOME/.xsession-errors"
    exit 1
fi

LOG_FILE=$1

# Section 2: File Check and Retry Loop
while [ ! -s "$LOG_FILE" ]; do
    echo "Error: Log file '$LOG_FILE' is either missing or empty."
    echo "Retrying in 5 seconds... (Press Ctrl+C to cancel)"
    sleep 5
done

echo "[Log Status]"
echo "Analyzing: $LOG_FILE"
echo "File Size: $(du -sh "$LOG_FILE" | awk '{print $1}')"

# Section 3: Keyword Search
# Suggest checking for common Firefox keywords if it's the target log
KEYWORD="firefox"

if grep -qi "$KEYWORD" "$LOG_FILE"; then
    echo "[Keyword Analysis]"
    COUNT=$(grep -ci "$KEYWORD" "$LOG_FILE")
    echo "Keyword Found: '$KEYWORD' occurred $COUNT times."
    echo "------------------------------------------------------------"
    echo "First 5 occurrences:"
    grep -ni "$KEYWORD" "$LOG_FILE" | head -n 5
    echo "------------------------------------------------------------"
else
    echo "[Keyword Analysis]"
    echo "Keyword Not Found: '$KEYWORD' was not found in $LOG_FILE."
    echo "------------------------------------------------------------"
fi

echo "Analysis Complete."
echo "------------------------------------------------------------"
