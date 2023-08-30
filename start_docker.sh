#!/usr/bin/env bash

set -e
set -x

base=`dirname "$0"`
base=`cd "$base"; pwd`
cd ${base}

docker pull aglimage/agl:agl-ubuntu-gcc9.4.0-py3.8-cuda11.8-pytorch2.0.1-0825

docker run -v ${base}/..:/graph_ml \
    -w /graph_ml \
    aglimage/agl:agl-ubuntu-gcc9.4.0-py3.8-cuda11.8-pytorch2.0.1-0825 \
    "/bin/bash"
