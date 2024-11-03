#!/bin/bash
set -e

cd "$(realpath "$(dirname "$0")")"/code
. ../env.sh

mvn -Dhttps.protocols=TLSv1.2 -pl hadoop-mapreduce-project/hadoop-mapreduce-client/hadoop-mapreduce-client-hs test -Dtest='org.apache.hadoop.mapreduce.v2.hs.TestJobHistoryParsing#testPartialJob'
