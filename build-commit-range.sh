#!/bin/bash

COMMIT_RANGE=$1
IMAGES=($(git diff --name-only $COMMIT_RANGE | grep Dockerfile))

if [ ! -z "$IMAGES" ]; then

  echo "Building images"
  echo "==============="

  # for each image
  for IMAGE in "${IMAGES[@]}"
  do
    IMAGE_PATH=$(echo $IMAGE | tr "/" "\n")
    IMAGE_ARRAY=(${IMAGE_PATH//;/ })
    IMAGE_NAME=${IMAGE_ARRAY[0]}
    PLATFORM=${IMAGE_ARRAY[1]}

    echo "Building $IMAGE_NAME for platform $PLATFORM"
    ./build.sh $IMAGE_NAME $PLATFORM
    
    TAG=$(grep "ENV VERSION" $IMAGE | awk 'NF>1{print $NF}')
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

fi

# get changed images references
IMAGES=($(git diff --name-only $COMMIT_RANGE | grep ref))
if [ ! -z "$IMAGES" ]; then

  echo "Cloning images"
  echo "==============="

  # for each image reference
  for IMAGE in "${IMAGES[@]}"
  do
    IMAGE_PATH=$(echo $IMAGE | tr "/" "\n")
    IMAGE_ARRAY=(${IMAGE_PATH//;/ })
    IMAGE_NAME=${IMAGE_ARRAY[0]}
    PLATFORM=${IMAGE_ARRAY[1]}
    TAG=latest
    echo "Cloning $IMAGE_NAME for platform $PLATFORM with tag $TAG"
    ./clone.sh $IMAGE_NAME $TAG $PLATFORM
  done
  cd ..

fi