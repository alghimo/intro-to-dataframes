#!/bin/bash

notebooks=(
    "notebook/intro-to-scala/1_basics                           2BJ5EXM41"
    "notebook/intro-to-scala/2_collections_and_type_inference   2BJNYS7B3"
    "notebook/intro-to-scala/3_oop_basics                       2BGZKZQZB"
    "notebook/intro-to-scala/4_functions                        2BGU1NN4F"
    "notebook/intro-to-scala/5_pattern_matching                 2BG791231"
    "notebook/intro-to-scala/6_extras                           2BHNQ5VW4"
    "notebook/home                                              2BGF7ZF2F"
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
