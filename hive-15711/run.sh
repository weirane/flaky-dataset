#!/bin/bash

set -e
. ./env.sh

cd "$(realpath "$(dirname "$0")")"
git clone https://github.com/apache/hive code
cd code
git checkout 719125cf183381f94590b619f69723eed348f856

# patch
git apply ../1.patch

# compile
mvn clean install -DskipTests -Pitests -pl itests/hive-unit -am
