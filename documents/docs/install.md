# Installation from Docker

Assumes a Linux OS as the Container Host. LFMC was developed and tested on these OSes.

Ubuntu Server 16.04 LTS
Ubuntu Server 18.04 LTS
Elementary OS 0.4.1 Loki
Elementary OS 0.5 Juno

	$ docker pull anthonyrawlinsuom/lfmc-geoserver
	
### Master Project Package
The components of the system are submodules of a master GitHub project. In order to maintain confidentiality, the webserver package is private.

###Building the containers
See: configuration

To build all the docker images from source run the following code:

	$ git clone https://github.com/AnthonyRawlinsUoM/LFMC
	$ cd LFMC
	$ make build