#!/bin/bash

#Setting constant variables. These ones will rarely be changed
#$containerDir = "/backups"
set today = 'date +%Y'
set site_name = 'fatima'
set site_home = "/home/makhate"
set uploadtoDrive = "/home/makhate/lib/gdrive-linux-x64"

echo "directory for site_home"
echo $site_home
echo "directory for uploadtoDrive"
echo $uploadtoDrive

#Setting flexible variables. These will be changed according to facility name and
#Google ID folder for that facility
#$facilityname = "sdahc"
set folderid = "1NCqMO6rCehpWUyeHg9wgJMy0S8HALuFz"

#creating backup
#docker exec -it eregister /usr/bin/mysqldump -u root --password=password openmrs > $site_home/backups/backup.sql
docker exec -it eregister /usr/bin/mysqldump -u root --password=password openmrs > /home/makhate/backups/thamae_sebata.sql


#uploading to Google Drive
#$uploadtoDrive upload --parent $folderid $site_home/backups/leribe.sql
$uploadtoDrive upload --parent 1NCqMO6rCehpWUyeHg9wgJMy0S8HALuFz /home/makhate/backups/sebata.sql