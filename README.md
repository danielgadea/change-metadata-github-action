# change-metadata-github-action
This GitHub Action copies a file from the current repository to a location in another repository

# Example Workflow
    - name: Change metadata of PDF file
      uses: ./ # Uses an action in the root directory
      with:
        file: ./sample.pdf
        title: Sample Title
        author: John Doe

For a full example please take a look at the sample action in this repository.

# Usage
This action uses https://exiftool.org/ to update metadata of files.
Please take a look at the documentation of exiftool to see the available file types.

# Variables
This action currently supports three variables:
- file -> file to change (required)
- title -> value to update tag "title" (optional)
- author -> value to update tag "author" (optional) 