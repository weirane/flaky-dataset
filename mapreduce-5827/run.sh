#!/bin/bash

set -e
. ./env.sh

cd "$(realpath "$(dirname "$0")")"
git clone https://github.com/apache/hadoop code
cd code
git checkout 06c15b6a3e07bfbdb5ef4db697737a7b0765da74

# patch

# compile
mvn -Dhttps.protocols=TLSv1.2 clean install -DskipTests -pl hadoop-mapreduce-project/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient -am
