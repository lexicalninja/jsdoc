#!/bin/sh -l

set -e

cd functions

sh -c "firebase use $*"

sh -c "npm install"

sh -c "npm run build --if-present"

sh -c "jsdoc -c jsdoc.json"

sh -c "firebase deploy --only hosting:functionDocs"
