#!/usr/bin/env bash
#
# imagesorter-v2
#
# A script to initialize imagesorter-v2 Docker image

mkdir Result Unsorted

if [[ -z "$(ls -A Unsorted)" ]]; then
    echo "No images in the Unsorted folder!"
else
    docker run -it -v "$(pwd)"/Result:/Result -v "$(pwd)"/Unsorted:/Unsorted imagesorter
fi
