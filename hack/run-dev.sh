#!/bin/bash

## Get the directory this script lives in
SCRIPT_DIR=$(dirname ${BASH_SOURCE[0]})
SCRIPT_DIR=$(cd $SCRIPT_DIR && pwd)

## Load the partial-arch.sh helper
#source ${SCRIPT_DIR}/partial-arch.sh
PLATFORM_TYPE=linux
TARGET_ARCH=amd64

## Run the Dev Server with:
## -s provides a relative path to the root of the hugo site
## -p specifies port
## --bind tells it to listen on any connection/interface
## --baseURL optionally tells it what URL to use instead of localhost
${SCRIPT_DIR}/../bin/hugo-${PLATFORM_TYPE}-${TARGET_ARCH} server -s src/ -p 1313 --bind 0.0.0.0 --config config.yml
