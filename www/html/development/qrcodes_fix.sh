#!/bin/bash

GIT_DIR=$(git rev-parse --show-toplevel)

# Allow group write access to site/qrcodes
chmod g+w ${GIT_DIR}/site/qrcodes

