#!/usr/bin/env bash

set -e

use_tag="antonapetrov/uvicorn-gunicorn-fastapi:$NAME"
use_dated_tag="${use_tag}-$(date +%F)"

bash scripts/build.sh

docker tag "$use_tag" "$use_dated_tag"

bash scripts/docker-login.sh

docker push "$use_tag"
docker push "$use_dated_tag"
