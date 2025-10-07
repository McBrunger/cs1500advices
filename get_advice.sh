#!/bin/bash
# get_advice.sh - Fetches a random advice from api.adviceslip.com and appends to a log file

# Variables
LOGFILE="charles.brunger.advices"
URL="https://api.adviceslip.com/advice"

# Fetch advice
response=$(curl -s $URL)
advice=$(echo $response | jq -r '.slip.advice')

# Get current date and time
datetime=$(date +"%Y-%m-%d %H:%M:%S")

# Append to log file
echo "[$datetime] $advice" >> $LOGFILE

echo "New advice saved at $datetime"


