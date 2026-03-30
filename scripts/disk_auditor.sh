#!/bin/bash

# ==============================================================================
# Script Name: disk_auditor.sh
# Purpose: Loop through system directories and check Firefox profile.
# Author: Khushal
# Project: The Open Source Audit (Capstone Project for OSS Course)
# ==============================================================================

# Variables as per instructions
STUDENT_NAME="Khushal"
SOFTWARE_CHOICE="Firefox"

echo "------------------------------------------------------------"
echo "Disk Auditor by $STUDENT_NAME"
echo "Target Software: $SOFTWARE_CHOICE"
echo "------------------------------------------------------------"

# Directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

# Section 1: System Directories Audit
echo "[System Directories Audit]"
for dir in "${DIRS[@]}"; do
    if [ -d "$dir" ]; then
        echo "Directory: $dir"
        echo "Status: FOUND"
        # Display first 3 files/dirs in each to confirm access
        ls -d "$dir"/* | head -n 3
        echo "------------------------------------------------------------"
    else
        echo "Directory: $dir"
        echo "Status: NOT FOUND"
        echo "------------------------------------------------------------"
    fi
done

# Section 2: Firefox Profile Audit
echo "[$SOFTWARE_CHOICE Profile Check]"
FIREFOX_PROFILE="$HOME/.mozilla/firefox"

if [ -d "$FIREFOX_PROFILE" ]; then
    echo "Profile Directory: $FIREFOX_PROFILE"
    echo "Status: FOUND"
    
    # Check permissions
    PERMS=$(ls -ld "$FIREFOX_PROFILE" | awk '{print $1}')
    echo "Permissions: $PERMS"
    
    # Report size (using du -sh if available)
    if command -v du >/dev/null 2>&1; then
        SIZE=$(du -sh "$FIREFOX_PROFILE" | awk '{print $1}')
        echo "Profile Size: $SIZE"
    else
        echo "Profile Size: Calculation tool 'du' not found."
    fi
else
    echo "Profile Directory: $FIREFOX_PROFILE"
    echo "Status: NOT FOUND"
    echo "Check if $SOFTWARE_CHOICE has been launched at least once."
fi

echo "------------------------------------------------------------"
