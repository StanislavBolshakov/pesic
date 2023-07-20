#!/bin/bash
set -ex

if [ -z "$1" ]; then
  echo "Usage: $0 <new_version>"
  exit 1
fi

sed -i "s/version=\"[^']*\"/version=\"$1\"/" setup.py
echo "Version updated to $1 in setup.py"