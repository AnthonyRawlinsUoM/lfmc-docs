#Configuration

To host the project yourself a few files will need a little configuration.

1. Firstly signup to Auth0 and create an API Access Token.

2. Create Enterprise links for OAuth configuration.

3. Configure database users automatic signup.

### Other configuration steps

1. Domain name registration and delegation of wildcard subdomain. For a simple domain-validated solution we recommend Let's Encrypt

2. Dataset placement and ENV configuration. The GeoServer Database must be accessible to the Celery Workers and so sharing it via NFS seems to be a workable solution.

3. Security Essentials, password configuration.

### Security Recommendations
- IP subnets can be imposed via the NAS to ensure only the Celery Workers can access the data.
- Change the default passwords
- Use HTTPS by registering a wildcard certificate

## The Environment File (.env)
Along with the docker-compose.yml file there is a very important hidden file that includes deployment configuration parameters used as Environment Variables by docker when bootstrapping the system.

	LFMC_INSTALL_DIR=/home/arawlins/Documents/LFMC
	FQDN=landscapefuelmoisture.bushfirebehaviour.net.au
	NFS_SERVER=10.101.94.16
	# NFS_SERVER=192.168.10.1
	NFS_PATH=/Pyromancer/Projects/Landscape_Fuel_Moisture_Project/data
	USER=1000
	REGISTRY=127.0.0.1:5000

### Environment Variables in the '.env' file
The .env file contains the following configuration variables:

#### 'LFMC_INSTALL_DIR'
The LFMC_INSTALL_DIR variable is the absolute path to the parent directory of the source code you cloned from GitHub.

#### 'FQDN'
The 'FQDN' variable is the Fully Qualified Domain Name from which you would like to host the LFMC system. This domain name and a wildcard subdomain A record eg., *.landscapefuelmoisture.bushfirebehaviour.net.au must both resolve to the machine that hosts reverse-proxy instance.

#### 'NFS_SERVER'
The 'NFS_SERVER' is the IP address of the Network Attached Storage (NAS) Machine that shares the Datasets via NFS.

#### 'NFS_PATH'
The 'NFS_PATH' variable is the path to the NFS share on the NAS.

#### 'REGISTRY'
This is the url to a docker image registry. You could alternatively set this to any public or private (with additional authentication configuration required) docker registry.

#### NFS Configuration
Docker volumes are shared amongst containers via a central NFS share on NAS. The following is an excerpt from the docker-compose.yml file that shows how NFS parameters are configured to allow simultaneous access from multiple instances of the docker images (eg., api, worker, or pipeline)

	nfs_fuel:
	    driver: local
	    driver_opts:
		type: nfs
		o: addr=${NFS_SERVER},nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2
		device: ${NFS_SERVER}:${NFS_PATH}/geoserver_data/FuelModels/