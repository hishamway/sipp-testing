

#!/bin/bash

# Output file
OUTPUT_FILE="numberSql.sql"

# Starting and ending user ID
START_ID=10
END_ID=99

# Server details
NUMBER_FIRST=+187228140


# Populate CSV entries
for (( ID=$START_ID; ID<=$END_ID; ID++ )); do
    echo "insert into number_cache (key_name , key_type , value_type , key_value , expires) values('phone_number::$NUMBER_FIRST$ID',0,0,'uat-metrowest$ID.csiq.io',0);" >> "$OUTPUT_FILE"
done

echo "CSV file generated at $OUTPUT_FILE with entries from $START_ID to $END_ID."
