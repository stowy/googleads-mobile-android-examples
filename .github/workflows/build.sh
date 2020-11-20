#!/bin/bash
# Script to build project if changes occur that contain project dir or build script.

CHANGES=$(git --no-pager diff --name-only $COMMIT_RANGE);
echo "Changes: ${CHANGES}, Commit range: ${COMMIT_RANGE}, Project dir: ${PROJ_DIR}";
if [[ -n "$(grep -E "(${PROJ_DIR}|\.github\/workflows)" <<< "$CHANGES")" ]]; then
  echo "Building for ${PROJ_DIR}";
  pushd "$PROJ_DIR";
  ./gradlew build;
  popd;
fi
