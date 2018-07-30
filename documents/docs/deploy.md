# Deployment

A single GeoServer instance should be sufficient in most circumstances. Additional WebServer instances can  be deployed via a container management tool like [Kubernetes](https://kubernetes.io/) as required, by modifying the docker compose yaml file with a tool such as [Kompose](https://kubernetes.io/blog/2016/11/kompose-tool-go-from-docker-compose-to-kubernetes/).

### Server Requirements
Any hosting platform capable of running Docker.
Ideally Kubernetes.
In a perfect world each container would run on its own VCPU(s).

### Requirements

  - [Docker](http://docker.com/)
  - [Docker Compose](https://docs.docker.com/compose/)

A brief introduction to Docker [![Docker in 12 Minutes](http://img.youtube.com/vi/YFl2mCHdv24/0.jpg)](https://www.youtube.com/watch?v=YFl2mCHdv24)


### To make the project:
    $ cd <install-dir>
    $ make
    $ make install

#### Developers - To make a version release:
    $ make release

This auto-increments the version numbers and initiates the build/relase cycle.
Then enter your GitHub username and password when prompted.


### To run the project locally
    $ docker-compose up

#### Restarting services
For example to restart the API server just enter:

    $ docker-compose restart api


### Stopping the Project

    $ docker-compose down

See: [Docker Compose Documentation](https://docs.docker.com/compose/reference/overview/#command-options-overview-and-help)


### Ports used by the project
  - 3000  -> Web Server (express, for live site)
  - 4200  -> Web Server (ng serve, for development site)
  - 8000  -> Documentation
  - 8002  -> LFMC API (REST)
  - 8080  -> GeoServer
  - 27017 -> MongoDB
