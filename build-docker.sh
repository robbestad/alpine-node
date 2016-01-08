#!/bin/bash

function image_tag {
    if [ -z "$IMAGE_TAG" ]
    then
        echo latest
    else
        echo $IMAGE_TAG
    fi
}

BASEDIR=$(pwd)
RUNNING_DIR=$(dirname $0)

WORKSPACE="$BASEDIR"
DOCKER_ROOT="$WORKSPACE/$RUNNING_DIR"

IMAGE_NAME=docker.nrk.no:5000/origo/node4_npm2

IMAGE_TAG=$(image_tag)
IMAGE_ID="$IMAGE_NAME:$IMAGE_TAG"

echo "Building Docker image $IMAGE_NAME from $DOCKER_ROOT."

docker build -t "$IMAGE_ID" "$DOCKER_ROOT" || exit 1
docker push "$IMAGE_ID" || exit 1

if [ "$IMAGE_TAG" != "latest" ]
then
    docker tag -f "$IMAGE_ID" "$IMAGE_NAME:latest" || exit 1
    docker push "$IMAGE_NAME:latest" || exit 1
fi
