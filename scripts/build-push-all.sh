#!/usr/bin/env bash

set -e

./scripts/docker-login.sh

BUILD_PUSH=1 python scripts/process_all.py
