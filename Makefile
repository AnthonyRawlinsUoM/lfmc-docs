all: pull
	
build:
	@docker build -t anthonyrawlinsuom/lfmc-docs .

install:
	@docker push anthonyrawlinsuom/lfmc-docs
	
pull:
	@docker pull anthonyrawlinsuom/lfmc-docs

clean:
	@docker rmi --force anthonyrawlinsuom/lfmc-docs