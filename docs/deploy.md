# Deployment

A single GeoServer instance should be sufficient in most circumstances. Additional WebServer instances can  be deployed via a container management tool like [Kubernetes](https://kubernetes.io/) as required. 

### Server Requirements

#### Hardware

#### Software

## Starting the containers

Must be run **in sequence**

#### 1. Start the DB Server Instance
	$ docker run --name mongodb -d --restart=always \
           --publish 27017:27017 \
           --volume /srv/docker/mongodb:/var/lib/mongodb \
           anthonyrawlinsuom/lfmc-mongodb:latest

#### 2. Start the Business-logic Pipeline Instance	
	$ docker run -it anthonyrawlinsuom/lfmc-pipeline

#### 3. Start the GeoServer Instance

	$ cd docker-geoserver
	$ ./run.sh
	
#### Storing map data on the host rather than the GeoServer container.
##### Docker volumes can be used to persist your data.

	mkdir -p ~/geoserver_data
	docker run -d -v $HOME/geoserver_data:/opt/geoserver/data_dir anthonyrawlinsuom/lfmc-geoserver
You need to ensure the geoserver_data directory has sufficient permissions for the docker process to read / write it.

#### 4. Start the Web Application Instance
	$ docker run -t anthonyrawlinsuom/lfmc-staging

#### Stopping the containers


#### Restarting the containers

#### Checking the containers PORT numbers

