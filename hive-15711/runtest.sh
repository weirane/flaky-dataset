#!/bin/bash
set -e

cd "$(realpath "$(dirname "$0")")"/code

. ../env.sh

# compile
mvn -q -Pitests -pl itests/hive-unit test -Dtest='org.apache.hive.service.cli.TestEmbeddedThriftBinaryCLIService#testTaskStatus'
