#!/bin/sh

#updating the metadata
exiftool -Title="${INPUT_FILE}" -Author="${INPUT_AUTHOR}" -overwrite_original -q "${INPUT_FILE}"