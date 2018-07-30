# API

Intended as a component to the LFMC Server Ecosystem. This is an image that answers Temporal Queries to form Time-series data in JSON format for subsequent analysis of Landscape Fuel Moisture Condition.

Also collects input data from a variety of sources and starts ingestion tasking on the cluster.
Processes, Models and TS Data are all exposed through a *RESTful API*.

---

### Building the Docker Image
    $ docker build .

### Running the Docker Image
    $ docker run -it -p 8002:8002 anthonyrawlinsuom/lfmc-api

### Monitoring the API Process Log inside the Container
    $ docker run -it -p 8002:8002 anthonyrawlinsuom/lfmc-api -exec /bin/bash /logviewer.sh

The API is intended to be self-documenting and the endpoint can be queried using curl or similar commands. Hug is used for API development and Hug also naturally exposes a WSGI-Compatible API ready for production use.

    $ curl http://api.landscapefuelmoisture.bushfirebehaviour.net.au/v1
---

Endpoint Examples
-----------------

### Requesting with a basic spatio-temporal query via POST

    curl -H "Content-Type: application/json" \
	 -H "Accept: application/json" \
	 -X POST \
	 -d '{ 	"start": "YYYYmmdd",
	    	"finish": "YYYYmmdd",
	    	"models": "<comma separated list of models>", \
	    	"weighted": "True", \
	    	"geo_json": <valid geojson boundary goes here> }' \
	 http://api.landscapefuelmoisture.bushfirebehaviour.net.au/v1/fuel.json

> NB in some instances area-weighted masking is inappropriate so you can pass a **False** value to the *weighted* field to enable binary masking only.

### Requesting NetCDF via POST

    curl -H "Content-Type: application/json" \
         -H "Accept: application/x-binary" \
	 -X POST \
	 -d '{ 	"start": "YYYYmmdd",
	    	"finish": "YYYYmmdd",
	    	"models": "<comma separated list of models>", \
	    	"weighted": "True", \
	    	"geo_json": <valid geojson boundary goes here> }' \
	 http://api.landscapefuelmoisture.bushfirebehaviour.net.au/v1/fuel.nc

> Note the suffix of the request URL **.nc** vs. **.json**.

### Requesting an MP4 via POST

    curl -H "Content-Type: application/json" \
         -H "Accept: video/mp4" \
	 -X POST \
	 -d '{ 	"start": "YYYYmmdd",
	    	"finish": "YYYYmmdd",
	    	"models": "<comma separated list of models>", \
	    	"weighted": "True", \
	    	"geo_json": <valid geojson boundary goes here> }' \
	 http://api.landscapefuelmoisture.bushfirebehaviour.net.au/v1/fuel.mp4
	 
> Note the **.mp4** suffix.

### Available Models and their metadata via GET

    $ curl http://api.landscapefuelmoisture.bushfirebehaviour.net.au/v1/models