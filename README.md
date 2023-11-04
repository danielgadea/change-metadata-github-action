# change-metadata-github-action
This GitHub Action copies a file from the current repository to a location in another repository

# Example Workflow
on: [push]

jobs:
  custom_test:
    runs-on: ubuntu-latest
    name: Changing metadata
    steps:
    - name: checkout
      uses: actions/checkout@master
    - name: Change metadata of PDF file
      uses: ./ # Uses an action in the root directory
      with:
        file: ./sample.pdf
        title: Sample Title
        author: John Doe

# Usage


# Variables

