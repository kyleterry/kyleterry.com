all: setup build docker-build

setup:
	go get github.com/kyleterry/solarwind

build: setup
	solarwind generate

docker-build: build
	docker build -t kyleterry/kyleterry.com .

.PHONY: all setup build docker-build
