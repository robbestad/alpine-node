#!/bin/bash

if [ -z "$IMAGE_TAG" ]
then
    echo "IMAGE_TAG required"
    exit 1
else
    echo $IMAGE_TAG
fi

if [ -z "$IMAGE_NAME" ]
then
    echo "IMAGE_NAME required"
    exit 1
else
    echo $IMAGE_NAME
fi

BASEDIR=$(pwd)

WORKSPACE="$BASEDIR"
DOCKER_ROOT="$WORKSPACE/$1"
IMAGE_ID="$IMAGE_NAME:$IMAGE_TAG"

echo "Building Docker image $IMAGE_NAME with tag $IMAGE_TAG from $DOCKER_ROOT."

echo docker build -t "$IMAGE_ID" "$DOCKER_ROOT" || exit 1
docker build -t "$IMAGE_ID" "$DOCKER_ROOT" || exit 1
echo docker push "$IMAGE_ID" || exit 1
docker push "$IMAGE_ID" || exit 1

