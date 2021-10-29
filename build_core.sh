#!/bin/bash
echo "Building core SAMPLE on $1";
docker exec -it $1_solr_1 mkdir -p /opt/solr/server/solr/TESTER1
docker cp ~/Downloads/conf/  $1_solr_1:/opt/solr/server/solr/TESTER1
docker exec -it  $1_solr_1 chown -R solr:solr /opt/solr/server/solr/TESTER1
docker exec -it  $1_solr_1 /opt/solr/bin/solr create_core -c TESTER1 -d /opt/solr/server/solr/TESTER1/conf -force