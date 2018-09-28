#!/bin/bash

#Setting constant variables. These ones will rarely be changed
#$containerDir = "/backups"
today = $(date +%d%m%Y)
site_name = "fatima"
site_home = "/home/makhate/"
uploadtoDrive = "/home/makhate/lib/gdrive-linux-x64"
folderid = "1NCqMO6rCehpWUyeHg9wgJMy0S8HALuFz"
backupname = $site_name + "_" +$today

echo "assigned date"
echo $today
echo "directory for site_home"
echo $site_home
echo "backupname"
echo $backupname
echo "directory for uploadtoDrive"
echo $uploadtoDrive

#Setting flexible variables. These will be changed according to facility name and
#Google ID folder for that facility
#$facilityname = "sdahc"


#creating backup
#docker exec -it eregister /usr/bin/mysqldump -u root --password=password openmrs > $site_home/backups/backup.sql
docker exec -it eregister /usr/bin/mysqldump -u root --password=password openmrs > /home/makhate/backups/$site_name$(date +%d%m%Y).sql


#uploading to Google Drive
#$uploadtoDrive upload --parent $folderid $site_home/backups/leribe.sql
#$uploadtoDrive upload --parent 1NCqMO6rCehpWUyeHg9wgJMy0S8HALuFz /home/makhate/backups/sebata.sql