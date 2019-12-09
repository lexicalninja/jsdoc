#!/bin/sh -l

set -e

sh -c "cd functions/ && npm run build --if-present"

sh -c "jsdoc -c jsdoc.json"

sh -c "firebase deploy --only hosting:functionDocs"
