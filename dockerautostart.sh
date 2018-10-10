#!/bin/bash

set CONTAINER="openmrseregister"

docker start $CONTAINER

docker exec -it $CONTAINER service httpd start

docker exec -it $CONTAINER service mysqld start

docker exec -it $CONTAINER service openmrs start