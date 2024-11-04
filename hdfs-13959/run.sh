#!/bin/bash

set -e
. ./env.sh

cd "$(realpath "$(dirname "$0")")"
git clone https://github.com/apache/hadoop code
cd code
git checkout 4ffec79b7caf00c96ad5a03983fa45a22ea7ba9d

# patch
git apply ../1.patch

# compile
mvn clean install -DskipTests -pl hadoop-hdfs-project/hadoop-hdfs -am
