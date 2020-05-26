#!/bin/sh
ESLINT_ERR=$(eslint --quiet --no-eslintrc tj.js)
echo ${ESLINT_ERR}
if  [ -z "${ESLINT_ERR}" ]
then
    echo no_error
else
    echo gg
fi
