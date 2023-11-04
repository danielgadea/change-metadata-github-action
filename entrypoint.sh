#!/bin/sh

${INPUT_FILE}

#install libimage-exiftool library
sudo apt-get install libimage-exiftool-perl perl-doc

#updating the metadata
 exiftool -Title="${INPUT_FILE}" -Author="${INPUT_AUTHOR}" -overwrite_original -q "${INPUT_FILE}"
 message = "Metadata for ${INPUT_FILE} updated successfully!"
 echo "::set-output name=output_message::$message"
done