#!/bin/bash

notebooks=(
    "notebook/intro-to-df/0_setup_data                          2BJ7UV53P"
    "notebook/intro-to-df/1_exploring_dataframes                2BGJMERQ3"
    "notebook/intro-to-df/2_transformations                     2BFMDMV28"
    "notebook/intro-to-df/3_actions                             2BJFVHAMG"
    "notebook/intro-to-df/4_troubleshooting                     2BH3KHM9W"
)

do_back_up()
{
  repo_folder=$1
  repo_code=$2
  mv $repo_folder back_up_$repo_code &&
  docker cp zeppelin:/zeppelin/notebook/$repo_code $repo_folder &&
  rm -r back_up_$repo_code
  echo "Copied notebook " $repo_code " on " $repo_folder
}


for n in "${notebooks[@]}"
do
  do_back_up $n
done
