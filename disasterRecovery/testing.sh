#!/bin/bash

#Setting constant variables. These ones will rarely be changed
#$containerDir = "/backups"
KAJENO = $(date +%d_%m_%Y)
SITEHC = "fatima"
set uploadtoDrive = "$HOME/lib/gdrive-linux-x64"
set FOLDERID = "1NCqMO6rCehpWUyeHg9wgJMy0S8HALuFz"
set BACKUPNAME=$SITEHC_$KAJENO

#Setting flexible variables. These will be changed according to facility name and
#Google ID folder for that facility
#$facilityname = "sdahc"


#creating backup
#docker exec -it eregister /usr/bin/mysqldump -u root --password=password openmrs > $site_home/backups/backup.sql
docker exec -it eregister /usr/bin/mysqldump -u root --password=password openmrs > $HOME/backups/thamae_$(date +%d_%m_%Y).sql


#uploading to Google Drive
#$uploadtoDrive upload --parent $folderid $site_home/backups/leribe.sql
$uploadtoDrive upload --parent 1NCqMO6rCehpWUyeHg9wgJMy0S8HALuFz $HOME/backups/thamae_$(date +%d_%m_%Y).sql