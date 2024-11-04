#!/bin/bash

set -e
. ./env.sh

cd "$(realpath "$(dirname "$0")")"
git clone https://github.com/apache/hadoop code
cd code
git checkout da59acd8ca9ab5b49b988ffca64e8cce91c5f741

git apply ../1.patch

mvn clean install -DskipTests -pl hadoop-mapreduce-project/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient -am
