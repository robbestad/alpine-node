## Repo used for building docker images with node for Origo

Note: Images are not automatically built and pushed to docker.nrk.no

Configure `Dockerfile` with node version and npm version, test build with
```
docker build alpine|debian
```

Then run the follow command to tag image with settings, and push to docker.nrk.no
```
IMAGE_TAG=baseimage_nodeversion_npmversion ./build-docker.sh alpine|debian
```

Example:
```
IMAGE_TAG=alpine22_node4.4.5 ./build-docker.sh alpine
IMAGE_TAG=base71_node4.4.4_npm2.15.6 ./build-docker.sh debian
```

To build alpine without NPM, add `--without-npm` to the `CONFIG_FLAGS` env variable

Existing tags are listed at https://docker.nrk.no/repositories/origo/docker-node/tags