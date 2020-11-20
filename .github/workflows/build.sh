CHANGES=$(git --no-pager diff --name-only $COMMIT_RANGE)
if [[ -n "$(grep -E "(${PROJ_DIR}|\.travis\.yml)" <<< "$CHANGES")" ]]; then
  pushd "$PROJ_DIR";
  ./gradlew build;
  popd;
fi
