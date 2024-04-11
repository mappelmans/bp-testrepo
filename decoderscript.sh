#!/bin/bash

# Path to the destination folder
DEST_FOLDER="/var/ossec/ruleset/decoders/"

# Path to the XML file
XML_FILE="$DEST_FOLDER/testdecoder.xml"

# URL of the raw XML file on GitHub with timestamp
XML_URL="https://raw.githubusercontent.com/mappelmans/decodertest/main/copydecoder.xml"

# Delete the existing XML file if it exists
if [ -f "$XML_FILE" ]; then
    rm "$XML_FILE"
fi

# download wget and send output to /dev/null

sudo apt install wget -y >> /dev/null
wget -O "$XML_FILE" "$XML_URL"

echo "XML file copied successfully to $XML_FILE"
