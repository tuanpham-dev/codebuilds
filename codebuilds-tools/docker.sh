#!/bin/bash

DOCKER_IMAGE=debian:latest;
docker pull ${DOCKER_IMAGE};
docker images;
chmod +x ${TRAVIS_BUILD_DIR}/codebuilds-tools/build.sh;
docker run -i -t -v ${TRAVIS_BUILD_DIR}/codebuilds-tools/build.sh:/build.sh ${DOCKER_IMAGE} /build.sh;
