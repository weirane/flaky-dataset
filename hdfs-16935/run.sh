#!/bin/bash

set -e

cd "$(realpath "$(dirname "$0")")"
. ./env.sh

git clone https://github.com/apache/hadoop code
cd code
git checkout 25ebd0b8b154434efaf63aa3e1f39fb58679b355

mvn clean install -DskipTests -pl hadoop-hdfs-project/hadoop-hdfs -am

git apply ../1.patch
