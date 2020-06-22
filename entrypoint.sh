#!/bin/sh
set -eu

cd $GITHUB_WORKSPACE

export

/usr/bin/lcov --gcov-tool $INPUT_GCOV_PATH $INPUT_PARAMS
