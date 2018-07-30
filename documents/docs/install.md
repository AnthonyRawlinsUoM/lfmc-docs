# Installation from Docker

### Model Server Instance

	$ docker pull anthonyrawlinsuom/lfmc-api

### Database Server Instance

	$ docker pull anthonyrawlinsuom/lfmc-mongodb

### Web Server Instance

	$ docker pull anthonyrawlinsuom/lfmc-staging

### Logic Server

	$ docker pull anthonyrawlinsuom/lfmc-pipeline

### GeoServer Instance

	$ docker pull anthonyrawlinsuom/lfmc-geoserver
	
# Installation from GitHub

First [clone the main collection repo](download).

## Building the containers

To build all the docker images from source run the following code:

	$ git clone https://github.com/AnthonyRawlinsUoM/LFMC
	$ cd LFMC
	$ make clean 
    $ make && make install

### Building the component containers

To build a component container use any of the following commands:

    $ make db
    $ make web
    $ make docs
    $ make api
    $ make geoserver
    $ make logic

Or by cd'ing into the module subfolder and running:

    $ make build

Cleaning the builds

    $ make clean

## Starting the System

	$ docker-compose up

## Viewing the running docker processes

    $ docker ps

## Stopping the containers

To stop a container use one of the following commands:

    $ docker stop lfmc_geoserver_1
    $ docker stop lfmc_api_1
    
    etc..
    
To stop the whole system:

    Ctrl-C in the active console (*Twice* to force a stop)

## Restarting the containers

To restart a container (for example after updating some code), run:

    $ docker-compose up -d <container>