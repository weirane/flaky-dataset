#!/bin/bash

set -e

cd "$(realpath "$(dirname "$0")")"
git clone https://github.com/apache/hadoop code
cd code
git checkout 25ebd0b8b154434efaf63aa3e1f39fb58679b355

export JAVA_HOME=/env/jdk8
export PATH=$JAVA_HOME/bin:$PATH

mvn clean install -DskipTests -pl hadoop-hdfs-project/hadoop-hdfs -am

git apply ../1.patch
