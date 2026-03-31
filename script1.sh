#!/bin/bash
# Script 1: System Identity Report
# Author: Lavish Varshney | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Lavish Varshney"
SOFTWARE_CHOICE="Apache HTTP Server"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(lsb_release -d | cut -f2)

# --- Display ---
echo "====================================="
echo " Open Source Audit — $STUDENT_NAME"
echo "====================================="
echo "Software : $SOFTWARE_CHOICE"
echo "Distro   : $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo ""
echo "This system is based on open-source licensing (GPL-based Linux ecosystem)."
