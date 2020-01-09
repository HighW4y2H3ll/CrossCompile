#!/bin/bash

#docker run -it --rm -v ${HOME}/dockercross:/workdir cross su $(whoami)
docker run --rm -it -v $(realpath $(dirname "${BASH_SOURCE[0]}")):/workdir -u $(id -u ${USER}):$(id -g ${USER}) cross
