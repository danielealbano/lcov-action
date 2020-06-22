#!/bin/sh
set -eu

REPOSITORY_NAME=$(basename -- $RUNNER_WORKSPACE)

# Map the directory used for the build to the github workspace to make lcov happy
mv -p $RUNNER_WORKSPACE
ln -s $GITHUB_WORKSPACE $RUNNER_WORKSPACE/$REPOSITORY_NAME

cd $GITHUB_WORKSPACE

/usr/bin/lcov --gcov-tool $INPUT_GCOV_PATH $INPUT_PARAMS
