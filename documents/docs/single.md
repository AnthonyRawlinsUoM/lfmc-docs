# Single-host mode

To launch the LFMC System on a single host:

	$ docker-compose up
	
Services can be scaled to cope with load using the following syntax

	$ docker-compose up --scale api=2

Stopping the LFMC Project

	$ docker-compose down