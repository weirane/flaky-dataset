#!/bin/bash

set -e
. ./env.sh

cd "$(realpath "$(dirname "$0")")"
git clone https://github.com/apache/hadoop code
cd code
git checkout aab9bed1beb90898c7d3df839a1665bdaf6f1a0e

# patch

# compile
mvn -Dhttps.protocols=TLSv1.2 clean install -DskipTests -pl hadoop-common-project/hadoop-common -am
