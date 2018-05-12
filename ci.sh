#!/bin/bash

if [ $TRAVIS_BRANCH == "master" ] && [ $TRAVIS_PULL_REQUEST == "false" ]; then
  docker run --rm --privileged multiarch/qemu-user-static:register --reset
  docker login -u="$DOCKER_USER" -p="$DOCKER_PASS"
  ./build-commit-range.sh $TRAVIS_COMMIT_RANGE
fi
