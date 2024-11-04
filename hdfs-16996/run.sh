#!/bin/bash

set -e
. ./env.sh

cd "$(realpath "$(dirname "$0")")"
git clone https://github.com/apache/hadoop code
cd code
git checkout e9740cb17aef157a615dc36ae08cd224ce1672f0

# patch

# compile
mvn clean install -DskipTests -pl hadoop-hdfs-project/hadoop-hdfs -am
