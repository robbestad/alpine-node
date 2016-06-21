## Repo used for building docker images with node for Origo

Note: Images are not automatically built and pushed to docker.nrk.no

Configure `Dockerfile` with node version and npm version, then run the follow command to tag image with settings
```
IMAGE_TAG=baseimage_nodeversion_npmversion ./build-docker.sh
```

Example:
```
IMAGE_TAG=alpine22_node4.4.5_npm2.15.6 ./build-docker.sh
```

To build without NPM, add `--without-npm` to the `CONFIG_FLAGS` env variable

Existing tags are listed at https://docker.nrk.no/repositories/origo/docker-node/tags