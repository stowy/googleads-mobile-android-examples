#!/bin/bash
# Script to build projects using build.sh script.
set -eo pipefail

for project in "${projects[@]}"
do
  export PROJ_DIR="${project}";
  .github/workflows/build/build.sh;
done
