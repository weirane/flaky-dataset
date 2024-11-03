#!/bin/bash

set -e
. ./env.sh

cd "$(realpath "$(dirname "$0")")"
git clone https://github.com/apache/olingo-odata2 code
cd code
git checkout 530a2a5a2877b82945bc82510b69d002a6c78b76

# patch

# compile
mvn clean install -DskipTests -pl odata2-jpa-processor/jpa-core -am
