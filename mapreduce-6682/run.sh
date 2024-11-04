#!/bin/bash

set -e
. ./env.sh

cd "$(realpath "$(dirname "$0")")"
git clone https://github.com/apache/hadoop code
cd code
git checkout a1f6564d31c16582ea949e4448091f1cc56c7dfe

# patch
git apply ../1.patch

# compile
mvn clean install -DskipTests -pl hadoop-mapreduce-project/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient -am
