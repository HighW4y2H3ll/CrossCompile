#!/bin/bash

docker run -v ${HOME}/dockercross:/workdir --rm cross su $(whoami) -c "$@"
