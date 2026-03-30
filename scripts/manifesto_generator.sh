#!/bin/bash

# ==============================================================================
# Script Name: manifesto_generator.sh
# Purpose: Interactive script to generate an Open Source Manifesto.
# Author: Khushal
# Project: The Open Source Audit (Capstone Project for OSS Course)
# ==============================================================================

# Variables as per instructions
STUDENT_NAME="Khushal"
SOFTWARE_CHOICE="Firefox"

echo "------------------------------------------------------------"
echo "Manifesto Generator by $STUDENT_NAME"
echo "Target Software: $SOFTWARE_CHOICE"
echo "------------------------------------------------------------"

# Section 1: Interactive Questions
echo "[Manifesto Creation]"

# Question 1: Favorite Tool
read -p "1. What is your favorite Open Source tool (besides $SOFTWARE_CHOICE)? " FAVORITE_TOOL

# Question 2: Definition of Freedom
read -p "2. What is your definition of software freedom? " FREEDOM_DEFINITION

# Question 3: Future Project
read -p "3. What future project would you like to contribute to? " FUTURE_PROJECT

# Section 2: Timestamp and Save
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
OUTPUT_FILE="manifesto_khushal.txt"

# Section 3: Formatting and Saving
echo "------------------------------------------------------------"
echo "Manifesto Generation In Progress..."

# Formatting the output
cat << EOF > "$OUTPUT_FILE"
------------------------------------------------------------
Open Source Manifesto
------------------------------------------------------------
Author: $STUDENT_NAME
Software Choice: $SOFTWARE_CHOICE
Generated On: $TIMESTAMP
------------------------------------------------------------

1. Favorite Open Source Tool:
$FAVORITE_TOOL

2. Definition of Software Freedom:
$FREEDOM_DEFINITION

3. Future Project Goals:
$FUTURE_PROJECT

------------------------------------------------------------
EOF

# Section 4: Success Message
if [ -f "$OUTPUT_FILE" ]; then
    echo "[Success]"
    echo "Manifesto generated successfully: $OUTPUT_FILE"
    echo "You can find your manifesto in the current directory."
    echo "------------------------------------------------------------"
    echo "Content of $OUTPUT_FILE:"
    cat "$OUTPUT_FILE"
    echo "------------------------------------------------------------"
else
    echo "[Error]"
    echo "Failed to generate $OUTPUT_FILE."
    echo "Check file permissions and directory space."
fi

echo "Manifesto Generator Complete."
echo "------------------------------------------------------------"
