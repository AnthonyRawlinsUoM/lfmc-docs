# Deployment Options



See: [Docker Compose Documentation](https://docs.docker.com/compose/reference/overview/#command-options-overview-and-help)

A single GeoServer instance should be sufficient in most circumstances. Additional WebServer instances can  be deployed via a container management tool like [Kubernetes](https://kubernetes.io/) as required, by modifying the docker compose yaml file with a tool such as [Kompose](https://kubernetes.io/blog/2016/11/kompose-tool-go-from-docker-compose-to-kubernetes/).


------

### Server Requirements
Any hosting platform capable of running Docker.

------

### Software Requirements

  - [Docker Swarm](http://docker.com/)
  - [Docker Compose](https://docs.docker.com/compose/)

A brief introduction to Docker [![Docker in 12 Minutes](http://img.youtube.com/vi/YFl2mCHdv24/0.jpg)](https://www.youtube.com/watch?v=YFl2mCHdv24)