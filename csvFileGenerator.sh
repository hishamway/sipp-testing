#!/bin/bash

# Output file
OUTPUT_FILE="registerBulkBig.csv"

# Starting and ending user ID
START_ID=100
END_ID=25000

# Server details
SERVER="uat-metrowest.csiq.io:5060"
PASSWORD="test1234"

# Write the SEQUENTIAL header
echo "SEQUENTIAL" > "$OUTPUT_FILE"

# Populate CSV entries
for (( ID=$START_ID; ID<=$END_ID; ID++ )); do
    echo "$ID;$SERVER;[authentication username=$ID password=$PASSWORD]" >> "$OUTPUT_FILE"
done

echo "CSV file generated at $OUTPUT_FILE with entries from $START_ID to $END_ID."
