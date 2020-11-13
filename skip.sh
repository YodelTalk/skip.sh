#!/bin/bash

folders=(`git diff-tree --no-commit-id --name-only master..HEAD`)

for folder in "${folders[@]}"; do
    if [[ "${folder}" =~ $FILE_PATTERN ]]; then exit 1; fi
done

exit 0
