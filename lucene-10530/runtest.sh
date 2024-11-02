#!/bin/bash
set -e

cd "$(realpath "$(dirname "$0")")"/lucene

./gradlew test --tests TestTaxonomyFacetAssociations.testFloatAssociationRandom -Dtests.seed=4DFBA8209AC82EB2 -Dtests.slow=true -Dtests.locale=fr-VU -Dtests.timezone=Europe/Athens -Dtests.asserts=true -Dtests.file.encoding=UTF-8
