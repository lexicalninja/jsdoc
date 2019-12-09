#!/bin/sh -l

set -e

cd functions

sh -c "npm install"

sh -c "npm run build --if-present"

sh -c "jsdoc -c jsdoc.json"

cd ../

sh -c "firebase use production"

sh -c "firebase deploy --only hosting:functionDocs"
