#!/bin/bash

#Setting constant variables. These ones will rarely be changed
#$containerDir = "/backups"
$host_folder = "/home/makhate/backups"

#Setting flexible variables. These will be changed according to facility name and
#Google ID folder for that facility
$facilityname = "sdahc"
$folderid = "1NCqMO6rCehpWUyeHg9wgJMy0S8HALuFz"

#creating backup
docker exec -it eregister /usr/bin/mysqldump -u root --password=password openmrs > /home/makhate/backups/backup.sql

#copying backup out of containter

gdrive-linux-x64 upload --parent $folderid omrs_latest_backup_12092018.sql