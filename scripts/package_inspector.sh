#!/bin/bash

# ==============================================================================
# Script Name: package_inspector.sh
# Purpose: Check if Firefox is installed and describe its philosophy.
# Author: Khushal
# Project: The Open Source Audit (Capstone Project for OSS Course)
# ==============================================================================

# Variables as per instructions
STUDENT_NAME="Khushal"
SOFTWARE_CHOICE="Firefox"

echo "------------------------------------------------------------"
echo "Package Inspector by $STUDENT_NAME"
echo "Target Software: $SOFTWARE_CHOICE"
echo "------------------------------------------------------------"

# Check if Firefox is installed using dpkg (Debian/Ubuntu) or rpm (Fedora/CentOS)
if command -v firefox >/dev/null 2>&1; then
    echo "[Package Status]"
    echo "SUCCESS: $SOFTWARE_CHOICE is installed on this system."
    echo "Path: $(command -v firefox)"
    
    # Check if we are on a Debian-based or RedHat-based system
    if command -v dpkg >/dev/null 2>&1; then
        echo "Package Manager: dpkg"
        dpkg -l | grep -i firefox | awk '{print "Installed Version: "$3}'
    elif command -v rpm >/dev/null 2>&1; then
        echo "Package Manager: rpm"
        rpm -q firefox
    fi
else
    echo "[Package Status]"
    echo "FAILURE: $SOFTWARE_CHOICE is NOT found in the system PATH."
    echo "Please ensure $SOFTWARE_CHOICE is installed before proceeding."
fi

echo "------------------------------------------------------------"

# Case statement explaining Firefox's philosophy
echo "[Philosophy and Vision]"
case $SOFTWARE_CHOICE in
    "Firefox")
        echo "Firefox Philosophy: Privacy-focused, Open Web, and Non-profit-driven."
        echo "Unlike proprietary browsers that monetize user data, Mozilla Firefox"
        echo "champions user agency, data protection, and a decentralized web."
        ;;
    "Chrome")
        echo "Chrome Philosophy: Speed and Integration, but tied to Google's data ecosystem."
        ;;
    "Edge")
        echo "Edge Philosophy: Corporate integration and Microsoft-centric features."
        ;;
    *)
        echo "Browser Philosophy: General focus on browsing capabilities."
        ;;
esac

echo "------------------------------------------------------------"
