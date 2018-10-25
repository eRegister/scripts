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

container=openmrseregister

#$docker restart $container

#docker exec -it $container service httpd start

#docker exec -it $container service mysqld start

#docker exec -it $container service openmrs start

case $1 in 

start)
    docker start $container
    docker exec -it $container service httpd start
    docker exec -it $container service mysqld start
    docker exec -it $container service openmrs start
    ;;
stop)
    docker stop $container
    ;;
restart
    docker stop $container
    sleep 6
    docker start $container
    docker exec -it $container service httpd start
    docker exec -it $container service mysqld start
    docker exec -it $container service openmrs start
    ;;
esac

exit 0