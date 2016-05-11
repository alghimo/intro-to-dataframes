#!/bin/bash
repo_code="2BGF7ZF2F"
repo_folder="notebook/home"
mv $repo_folder back_up && docker cp zeppelin:/zeppelin/notebook/$repo_code $repo_folder &&
rm -r back_up
echo "Copied notebook " $repo_code " on " $repo_folder
