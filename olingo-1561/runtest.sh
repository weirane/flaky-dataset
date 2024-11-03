#!/bin/bash
set -e

cd "$(realpath "$(dirname "$0")")"/code

. ../env.sh

# compile
mvn -pl odata2-jpa-processor/jpa-core test -Dtest='JPAEntityTest#testCreateODataEntryPropertyWithOutCallBack'
