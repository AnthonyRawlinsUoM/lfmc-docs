all: build
	
build:
	@docker build -t anthonyrawlinsuom/lfmc-docs .

install:
	@docker push anthonyrawlinsuom/lfmc-docs

clean:
	@docker rmi anthonyrawlinsuom/lfmc-docs