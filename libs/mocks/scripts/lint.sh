#!/bin/bash

set -eu
MOCKS_ROOT=$(dirname "$( cd "$(dirname "$0")" ; pwd -P )")
find "$MOCKS_ROOT/WordPressMocks/src/main/assets" -name "*.json" -type f -exec bundle exec jsonlint {} \;
echo "Done"
