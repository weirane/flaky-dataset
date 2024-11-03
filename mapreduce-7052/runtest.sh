#!/bin/bash
set -e

cd "$(realpath "$(dirname "$0")")"/code

. ../env.sh

mvn -pl hadoop-mapreduce-project/hadoop-mapreduce-client/hadoop-mapreduce-client-jobclient test -Dtest='org.apache.hadoop.mapred.TestFixedLengthInputFormat#testFormatCompressedIn'
