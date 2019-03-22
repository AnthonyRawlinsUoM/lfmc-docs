#Configuration

To host the project yourself a few files will need a little configuration.

1. Firstly signup to Auth0 and create an API Access Token.

2. Create Enterprise links for OAuth configuration.

3. Configure database users automatic signup.

---

### Other configuration steps

1. Domain name registration and delegation.
    [*.landscapefuelmoisture.bushfirebehaviour.net.au](*.landscapefuelmoisture.bushfirebehaviour.net.au) should CNAME to [landscapefuelmoisture.bushfirebehaviour.net.au](landscapefuelmoisture.bushfirebehaviour.net.au)

2. Dataset placement and NFS configuration. The GeoServer Database must be accessible to the Celery Workers and so sharing it via NFS seems to be a workable solution.

3. Security Essentials, password configuration.

---

### Security Recommendations
- IP subnets can be imposed via the NAS to ensure only the Celery Workers can access the data.
- Change the default passwords
- Use HTTPS by registering a wildcard certificate

---