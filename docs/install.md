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

	$ cd lfmc-geoserver
	$ docker build geoserver .
	
	$ cd ../lfmc-pipeline
	$ docker build pipeline .
	
	$ cd ../lfmc-mongodb
	$ docker build mongo .
	
	$ cd ../lfmc-staging
	$ docker build webserver .

## Starting the containers

Must be run **in sequence**

	$ docker run -it 

## Stopping the containers

## Restarting the containers

## Checking the containers PORT numbers

