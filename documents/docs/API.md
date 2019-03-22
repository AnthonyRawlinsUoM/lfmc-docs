# API

Intended as a component to the LFMC Server Ecosystem. This is an image that answers Temporal Queries to form Time-series data in JSON format for subsequent analysis of Landscape Fuel Moisture Condition.

Also collects input data from a variety of sources and starts ingestion tasking on the cluster.
Processes, Models and TS Data are all exposed through a *RESTful API*.

The API is intended to be self-documenting and the endpoint can be queried using curl or similar commands. Hug is used for API development and Hug also naturally exposes a WSGI-Compatible API ready for production use.

    $ curl http://api.landscapefuelmoisture.bushfirebehaviour.net.au/v1
---

## Endpoint Examples

### Requesting with a basic spatio-temporal query via POST

    curl -H "Content-Type: application/json" \
	 -H "Accept: application/json" \
	 -X POST \
	 -d '{ 	"start": "YYYYmmdd", \
	    	"finish": "YYYYmmdd", \
	    	"models": "<comma separated list of models>", \
	    	"geo_json": <valid geojson boundary goes here> }' \
	 http://api.landscapefuelmoisture.bushfirebehaviour.net.au/v1/fuel.json

#### Requesting NetCDF via POST

    curl -H "Content-Type: application/json" \
         -H "Accept: application/x-binary" \
	 -X POST \
	 -d '{ 	"start": "YYYYmmdd", \
	    	"finish": "YYYYmmdd", \
	    	"models": "<comma separated list of models>", \
	    	"geo_json": <valid geojson boundary goes here> }' \
	 http://api.landscapefuelmoisture.bushfirebehaviour.net.au/v1/fuel.nc

> Note the suffix of the request URL **.nc** vs. **.json**.

<!-- #### Requesting an MP4 via POST

    curl -H "Content-Type: application/json" \
         -H "Accept: video/mp4" \
	 -X POST \
	 -d '{ 	"start": "YYYYmmdd", \
	    	"finish": "YYYYmmdd", \
	    	"models": "<comma separated list of models>", \
	    	"geo_json": <valid geojson boundary goes here> }' \
	 http://api.landscapefuelmoisture.bushfirebehaviour.net.au/v1/fuel.mp4
	 
> Note the **.mp4** suffix. -->

### Available Models and their metadata via GET

    $ curl http://api.landscapefuelmoisture.bushfirebehaviour.net.au/v1/models
    
### Model Codes, Names, and Identifiers
Each returns an array

    $ curl http://api.landscapefuelmoisture.bushfirebehaviour.net.au/v1/models/codes

    $ curl http://api.landscapefuelmoisture.bushfirebehaviour.net.au/v1/models/names

    $ curl http://api.landscapefuelmoisture.bushfirebehaviour.net.au/v1/models/idents
