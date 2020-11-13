#!/bin/bash

folders=(`git diff-tree --no-commit-id --name-only master..HEAD`)

for folder in "${folders[@]}"; do
    if [[ "${folder}" =~ $FILE_PATTERN ]]; then exit 0; fi
done

exit 1
