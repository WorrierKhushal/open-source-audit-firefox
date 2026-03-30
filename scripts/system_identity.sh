#!/bin/bash

# ==============================================================================
# Script Name: system_identity.sh
# Purpose: Display system identity information and licensing message.
# Author: Khushal mahajan REGNO:24MIM10014
# Project: The Open Source Audit (Capstone Project for OSS Course)
# ==============================================================================

# Variables as per instructions
STUDENT_NAME="Khushal"
SOFTWARE_CHOICE="Firefox"

echo "------------------------------------------------------------"
echo "Project: The Open Source Audit"
echo "Student Name: $STUDENT_NAME"
echo "Target Software: $SOFTWARE_CHOICE"
echo "------------------------------------------------------------"

# Section 1: System Identity Information
echo "[System Identity Info]"

# Fetching Distro Name
if [ -f /etc/os-release ]; then
    DISTRO=$(grep "^PRETTY_NAME=" /etc/os-release | cut -d'"' -f2)
else
    DISTRO="Unknown Linux Distribution"
fi
echo "Distribution: $DISTRO"

# Kernel Version
echo "Kernel: $(uname -sr)"

# Current User
echo "User: $(whoami)"

# Home Directory
echo "Home: $HOME"

# System Uptime
echo "Uptime: $(uptime -p)"

echo "------------------------------------------------------------"

# Section 2: Open Source License Message
echo "[OSS Licensing Message]"
cat << EOF
This system is powered by Linux, a premier example of the Free and Open Source 
Software (FOSS) movement. Distributed under the GNU General Public License (GPL), 
it ensures that users have the freedom to run, study, share, and modify the software. 
As an Open Source Contributor, I acknowledge that this collaborative model 
fosters innovation, security, and digital sovereignty.
EOF
echo "------------------------------------------------------------"
