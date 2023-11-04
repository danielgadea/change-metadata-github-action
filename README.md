# change-metadata-github-action
This GitHub Action allows changing the metadata of PDF files within the checked out repository.

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
This action is currently focused on PDF metadata & supports three variables:
- file -> file to change (required)
- title -> value to update tag "title" (optional) -> if not provided will be updated to an empty string
- author -> value to update tag "author" (optional) -> if not provided will be updated to an empty string