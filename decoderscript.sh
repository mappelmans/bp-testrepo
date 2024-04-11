#!/bin/bash

# Path to the destination folder
DEST_FOLDER="/var/ossec/ruleset/decoders"

# Path to the XML file
XML_FILE="$DEST_FOLDER/testdecoder.xml"

# Clone the GitHub repository
git clone https://github.com/mappelmans/decodertest.git temp_repo

# Copy the contents of copydecoder.xml to testdecoder.xml
cp temp_repo/copydecoder.xml "$XML_FILE"

# Remove the temporary repository
rm -rf temp_repo

echo "XML file copied successfully to $XML_FILE"
