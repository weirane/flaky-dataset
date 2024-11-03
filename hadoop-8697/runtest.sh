#!/bin/bash
set -e

cd "$(realpath "$(dirname "$0")")"/code

. ../env.sh

# compile
mvn -Dhttps.protocols=TLSv1.2 -pl hadoop-common-project/hadoop-common test -Dtest='org.apache.hadoop.io.TestWritableName#testAddName'
