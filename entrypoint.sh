#!/bin/sh
set -eu

cd $GITHUB_WORKSPACE

/usr/bin/lcov $INPUT_PARAMS
