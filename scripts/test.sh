#!/usr/bin/env bash
set -e

./scripts/build.sh
pytest tests
