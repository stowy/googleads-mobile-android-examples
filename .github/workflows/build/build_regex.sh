#!/bin/bash
# Script to build projects within java and kotlin subdirectories matching $REGEX variable,
#  using build.sh script.

set -eo pipefail

export COMMIT_RANGE="${COMMIT_RANGE}";

export projects=()

while IFS=  read -r -d $'\0'; do
    (echo "${REPLY}" | grep -E "(kotlin|java)" | grep -E "${REGEX}" )  && projects+=("$REPLY") && echo "Building ${REPLY}"
done < <(find . -type d -maxdepth 3 -mindepth 3 -print0)

. .github/workflows/build/build_all.sh;
