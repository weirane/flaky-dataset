#!/bin/bash
set -e

cd "$(realpath "$(dirname "$0")")"/code

mvn -pl hadoop-hdfs-project/hadoop-hdfs test -Dtest='org.apache.hadoop.hdfs.server.datanode.fsdataset.impl.TestFsDatasetImpl#testReportBadBlocks'
