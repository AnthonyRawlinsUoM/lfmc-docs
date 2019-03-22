# Development

### Build Tools
- Make
- Docker
- docker-compose
- Angular
- NPM

Modules can be built using the supplied Makefiles.

---

### Test, Bump, Patch & Release builds
Pre-configured makefiles allow you to contribute version number releases in the following standardised way.

**To make a test release**
Version number remains the same
eg., 1.2.3 --> 1.2.3

    $ make build

**To make a bump release**
eg., 1.2.3 --> 1.2.4

	$ make bump

**To make a patch release**
eg., 1.2.4 --> 1.3.0

	$ make patch
	
**To make a release version**
eg., 1.3.0 --> 2.0.0
	
	$ make release

### Version Control
Modules are controlled by a VERSION file in each top-level directory.
