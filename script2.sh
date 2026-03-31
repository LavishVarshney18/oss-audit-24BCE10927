#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="apache2"

# Check if package is installed
if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement
case $PACKAGE in
    apache2) echo "Apache: the web server that powers the open internet" ;;
    mysql) echo "MySQL: open source database used worldwide" ;;
    firefox) echo "Firefox: browser supporting open web standards" ;;
    vlc) echo "VLC: plays almost any media format freely" ;;
    *) echo "Unknown package" ;;
esac
