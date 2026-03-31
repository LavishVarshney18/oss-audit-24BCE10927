#!/bin/bash  # shebang to specify bash shell
# Script 5: Open Source Manifesto Generator 
# Author: Lavish Varshney

echo "Answer the following questions:"  # heading
echo ""

read -p "1. Tool you use daily: " TOOL      # input tool name
read -p "2. Freedom means: " FREEDOM        # input meaning of freedom
read -p "3. What will you build: " BUILD    # input future project

DATE=$(date '+%d %B %Y')   # store current date
FILE="manifesto_$(whoami).txt"   # define output file name

echo "Open Source Manifesto - $DATE" > $FILE   # create file with title
echo "" >> $FILE   # add blank line
echo "Using $TOOL, I believe in $FREEDOM." >> $FILE   # write line 1
echo "I aim to build $BUILD and share it freely with others." >> $FILE   # write line 2

echo "Manifesto saved in $FILE"   # confirmation message
cat $FILE   # display file content
