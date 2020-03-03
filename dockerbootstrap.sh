#!/bin/bash

docker exec -i openmrseregister service httpd start
docker exec -i openmrseregister service openmrs start
docker exec -i openmrseregister service bahmni-reports start
docker exec -i openmrseregister sh /var/www/bahmni_config_release/git_sync_branch.sh
