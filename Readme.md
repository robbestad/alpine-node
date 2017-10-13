# Repo used for building docker images with node for Origo

Note: Images are not automatically built and pushed to dtr.nrk.no

Configure `Dockerfile` with node version and npm version, test build with

```
docker build alpine
```

Then run the follow command to tag image with settings, and push to docker.nrk.no
```
IMAGE_TAG=baseimage_nodeversion_npmversion ./build-docker.sh alpine
```

Example:
```
IMAGE_TAG=alpine22_node8.6 ./build-docker.sh alpine
```

https://dtr.nrk.no/repositories/origo/docker-node/tags

### USAGE

Create a Dockerfile and add the following FROM:

```
FROM dtr.nrk.no/origo/origo-docker-node:alpine22_node8.6

```
