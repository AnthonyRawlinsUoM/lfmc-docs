# Installation from Docker

### Database Server Instance

	> docker pull anthonyrawlinsuom/lfmc-mongodb

### Web Server Instances

	> docker pull anthonyrawlinsuom/lfmc-staging
	> docker pull anthonyrawlinsuom/lfmc-pipeline

### GeoServer Instance

	> docker pull anthonyrawlinsuom/lfmc-geoserver
	
# Installation from GitHub

First [clone the repos](download).

## Building the containers

	$ git clone https://github.com/AnthonyRawlinsUoM/docker-geoserver
	$ cd docker-geoserver
	$ ./build.sh
	
	$ cd ../lfmc-pipeline
	$ docker build pipeline .
	
	$ cd ../lfmc-mongodb
	$ docker build mongo .
	
	$ cd ../lfmc-staging
	$ docker build webserver .

## Starting the containers

Must be run **in sequence**

	$ docker run --name mongodb -d --restart=always \
           --publish 27017:27017 \
           --volume /srv/docker/mongodb:/var/lib/mongodb \
           anthonyrawlinsuom/lfmc-mongodb:latest
	$ docker run -it anthonyrawlinsuom/lfmc-pipeline
	$ cd docker-geoserver
	$ ./run.sh 
	$ docker run -t anthonyrawlinsuom/lfmc-staging

## Stopping the containers

## Restarting the containers

## Checking the containers PORT numbers

