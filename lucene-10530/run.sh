#!/bin/bash

set -e

cd "$(realpath "$(dirname "$0")")"

git clone https://github.com/apache/lucene code
cd code
git checkout 0dad9ddae87beb888b9374f9fb5f223e5940e586

# export PATH=/env/apache-maven-3.8.8/bin:$PATH
# export PATH=$JAVA_HOME/bin:$PATH
