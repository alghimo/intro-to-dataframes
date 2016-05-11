#!/bin/bash

notebooks=(
	"notebook/intro-to-spark                                    2BKE3N99M"
)

do_back_up()
{
  repo_folder=$1
  repo_code=$2
  mv $repo_folder back_up_$repo_code &&
  docker cp zeppelin:/zeppelin/notebook/$repo_code $repo_folder &&
#  rm -r back_up_$repo_code
  echo "Copied notebook " $repo_code " on " $repo_folder
}


for n in "${notebooks[@]}"
do
  do_back_up $n
done
