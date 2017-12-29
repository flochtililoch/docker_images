#!/bin/bash

if [ $TRAVIS_BRANCH == "master" ] && [ $TRAVIS_PULL_REQUEST == "false" ]; then
  # prepare environment
  docker run --rm --privileged multiarch/qemu-user-static:register --reset
  docker login -u="$DOCKER_USER" -p="$DOCKER_PASS"

  # get changed images
  IMAGES=$(git diff --name-only $TRAVIS_COMMIT_RANGE | grep images/ | grep Dockerfile)

  if [ ! -z $IMAGES ]; then
    # for each image
    cd images
    for IMAGE in "${IMAGES[@]}"
    do
      IMAGE_PATH=$(echo $IMAGE | tr "/" "\n")
      IMAGE_NAME=${IMAGE_PATH[1]}
      PLATFORM=${IMAGE_PATH[2]}

      echo "Building $IMAGE_NAME for platform $PLATFORM"
      ./build.sh $IMAGE_NAME $PLATFORM

      TAG=$(grep "ENV VERSION" ../$IMAGE | awk 'NF>1{print $NF}')
      if [ ! -z $TAG ]; then
        echo "Tagging $IMAGE_NAME for platform $PLATFORM with tag $TAG"
        ./tag.sh $IMAGE_NAME $TAG $PLATFORM

        echo "Pushing $IMAGE_NAME for platform $PLATFORM with tag $TAG"
        ./push.sh $IMAGE_NAME $TAG $PLATFORM
      fi
      echo "Tagging $IMAGE_NAME for platform $PLATFORM with tag latest"
      ./tag.sh $IMAGE_NAME latest $PLATFORM

      echo "Pushing $IMAGE_NAME for platform $PLATFORM with tag latest"
      ./push.sh $IMAGE_NAME latest $PLATFORM
    done
    cd ..

  fi

  # get changed images references
  IMAGES=$(git diff --name-only $TRAVIS_COMMIT_RANGE | grep images/ | grep ref)

  if [ ! -z $IMAGES_REFS ]; then

    # for each image reference
    cd images
    for IMAGE in "${IMAGES[@]}"
    do
      IMAGE_PATH=$(echo $IMAGE | tr "/" "\n")
      IMAGE_NAME=${IMAGE_PATH[1]}
      PLATFORM=${IMAGE_PATH[2]}
      TAG=latest
      echo "Cloning $IMAGE_NAME for platform $PLATFORM with tag $TAG"
      ./clone.sh $IMAGE_NAME $TAG $PLATFORM
    done
    cd ..

  fi

fi
