#!/bin/bash

#creating backup
docker exec -i openmrseregister /usr/bin/mysqldump -u root --password=password openmrs | gzip -c > /home/administrator/backups/hiels_$(date +%d_%m_%Y).gz


 
