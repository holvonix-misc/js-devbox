#!/bin/sh
set -euv
VERSION=$1
git commit -m v$VERSION
git tag -s -m v$VERSION v$VERSION
git push public --tags || echo No public repo.
git push --tags

git push public || echo No public repo.
git push
