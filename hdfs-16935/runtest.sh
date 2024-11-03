#!/bin/bash
set -e

cd "$(realpath "$(dirname "$0")")"/code

. ../env.sh

mvn -pl hadoop-hdfs-project/hadoop-hdfs test -Dtest='org.apache.hadoop.hdfs.server.datanode.fsdataset.impl.TestFsDatasetImpl#testReportBadBlocks'
