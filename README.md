# LFMC Documentation

#### Requirements
[MkDocs](http://www.mkdocs.org/) is a fast, simple and downright gorgeous static site generator that's geared towards building project documentation. Documentation source files are written in Markdown, and configured with a single YAML configuration file.

### Building the documentation
To build the documentation run:

	$ mkdocs build --clean
	
Upload the contents of the entire site directory to wherever you're hosting your website from and you're done.

For specific instructions see: [Deployment Guide](http://www.mkdocs.org/user-guide/deploying-your-docs/)

# Using Docker to deploy as website

This image will provide you mkdocs. Some examples of its usage:

Serve your project
------------------

If you are inside a VM (boot2docker or similar) you will need to set the host to `0.0.0.0`:

    cd lfmc
    docker run -it --rm -v `pwd`:/docs -p 8000:8000 jobandtalent/mkdocs serve -a 0.0.0.0:8000

Build your docs
---------------

    cd lfmc
    docker run -it --rm -v `pwd`:/docs jobandtalent/mkdocs build

If you want to generate them in other place mount `/docs/site` as a volume:

    docker run -it --rm -v `pwd`:/docs -v $HOME/Desktop/site:/docs/site jobandtalent/mkdocs build