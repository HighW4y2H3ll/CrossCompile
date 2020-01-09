#!/bin/bash

docker run -it --rm -v ${HOME}/dockercross:/workdir cross su $(whoami)
