#!/bin/bash

set -e
. ./env.sh

cd "$(realpath "$(dirname "$0")")"
git clone https://github.com/apache/hadoop code
cd code
git checkout fef8f49c5885ba05dcd73e8a02de7c2be5ec3f0e

# patch

# compile
mvn -Dhttps.protocols=TLSv1.2 clean install -DskipTests -pl hadoop-mapreduce-project/hadoop-mapreduce-client/hadoop-mapreduce-client-app -am
