#!/bin/bash

#this script will be run by a cronjob
#put it in ~/lib (OR $HOME/lib)
#then we'll tell the OS to bootstrap docker
#and its services at startup or reboot
#follow this steps:
#put the script in $HOME/lib/
#go to the lid directory [cd $HOME/lib]
#make the script to be executable with this [chmod +x ./dockerbootstrap.sh]
#run this command [crontab -e]
#edit the cron editor like so:
#@reboot $HOME/lib/dockerbootstrap.sh

docker restart openmrseregister

docker exec -it openmrsegister service httpd start

docker exec -it openmrseregister service mysqld start

docker exec -it openmrseregister service openmrs start