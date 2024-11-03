#!/bin/bash

set -e

cd "$(realpath "$(dirname "$0")")"
. ./env.sh

git clone https://github.com/apache/hadoop code
cd code
git checkout 034df0e2eb2824fb46a1e75b52d43d9914a04e56
git apply ../1.patch

mvn -Dhttps.protocols=TLSv1.2 clean install -DskipTests -pl hadoop-mapreduce-project/hadoop-mapreduce-client/hadoop-mapreduce-client-hs -am
