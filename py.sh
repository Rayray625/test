#!/bin/sh
DIFF_FILES=$(git diff --name-only origin/master)
echo $DIFF_FILES
DIFF_PY_FILES=""
for FILE_NAME in $DIFF_FILES; do
    if [[ $FILE_NAME == *.py ]];
    then
        DIFF_PY_FILES="${DIFF_PY_FILES} ${FILE_NAME}"
    fi
    if [[ $FILE_NAME == *.js ]];
    then
        DIFF_JS_FILES="${DIFF_JS_FILES} ${FILE_NAME}"
    fi
done
echo py=${DIFF_PY_FILES}
echo js=${DIFF_JS_FILES}
