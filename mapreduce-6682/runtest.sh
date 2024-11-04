#!/bin/bash
set -e

cd "$(realpath "$(dirname "$0")")"/code

. ../env.sh

# compile
mvn -pl hadoop-mapreduce-project/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient test -Dtest='org.apache.hadoop.mapred.TestMRCJCFileInputFormat#testAbort'
