# Deployment

A single GeoServer instance should be sufficient in most circumstances. Additional WebServer instances can  be deployed via a container management tool like [Kubernetes](https://kubernetes.io/) as required. 

### Server Requirements
Any hosting platform capable of running Docker.
Ideally Kubernetes.
In a perfect world each container would run on its own VCPU(s).

### Requirements
Docker (http://docker.com/)

### To make the project:
    $ cd <install-dir>
    $ make
    $ make install

### To run the project locally
    $ docker-compose up

### To run the project on NECTAR.org.au

TODO - Documentation for...
- Kubernetes Cluster App
- Environment YAML

### Stopping the Project

    $ docker-compose down

See: [Docker Compose Documentation](https://docs.docker.com/compose/reference/overview/#command-options-overview-and-help)


### Ports used by the project
  - 3000  -> Web Server (express)
  - 4200  -> Web Server (ng serve)
  - 8001  -> Documentation Website
  - 8002  -> LFMC API (REST)
  - 8080  -> TOMCAT
  - 9090  -> GeoServer
  - 27017 -> MongoDB
