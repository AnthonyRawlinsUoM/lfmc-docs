all: build install pull
	
build:
	@docker build -t anthonyrawlinsuom/lfmc-docs .

install:
	@docker push anthonyrawlinsuom/lfmc-docs
	
pull:
	@docker pull anthonyrawlinsuom/lfmc-docs
	
release:
	./release.sh

clean:
	@docker rmi --force anthonyrawlinsuom/lfmc-docs