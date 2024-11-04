#!/bin/bash

set -e
. ./env.sh

cd "$(realpath "$(dirname "$0")")"
git clone https://github.com/apache/hadoop code
cd code
git checkout 1268cf5fbe4458fa75ad0662512d352f9e8d3470

# patch

# compile
mvn clean install -DskipTests -pl hadoop-mapreduce-project/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient -am
