#!/bin/bash

#docker run -v ${HOME}/dockercross:/workdir --rm cross su $(whoami) -c "$@"
docker run --rm -it -v $(realpath $(dirname "${BASH_SOURCE[0]}")):/workdir -u $(id -u ${USER}):$(id -g ${USER}) cross "$@"
