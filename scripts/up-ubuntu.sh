#!/usr/bin/env bash

# Prerequisite tools.
apt-get install -y git \
	zsh

$(dirname "${BASH_SOURCE[0]}")/up-common.sh
