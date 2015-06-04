#user=${USER}
user = richardlr

all: build

build:
	@docker build --tag=$(user)/ubuntu:latest .

base:
	@docker pull ubuntu:14.04

rebuild: base
	@docker build --tag=$(user)/ubuntu:latest .

release: rebuild
	@docker build --tag=$(user)/ubuntu:14.04.$(shell date +%Y%m%d) .
