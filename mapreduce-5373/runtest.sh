#!/bin/bash
set -e

cd "$(realpath "$(dirname "$0")")"/code

. ../env.sh

# compile
mvn -Dhttps.protocols=TLSv1.2 -pl hadoop-mapreduce-project/hadoop-mapreduce-client/hadoop-mapreduce-client-app test -Dtest='org.apache.hadoop.mapreduce.v2.app.TestFetchFailure#testFetchFailureMultipleReduces'
