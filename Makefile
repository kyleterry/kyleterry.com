GO        ?= go
DOCKER    ?= docker
RELEASE   ?= kyleterry/kyleterry.com:latest

all: build

build:
	$(DOCKER) build -t $(RELEASE) .

run:
	$(eval container_id := $(shell $(DOCKER) run -it --rm -P -d $(RELEASE)))
	$(eval bound_to := $(shell docker port $(container_id) 80))
	@echo http://$(value bound_to)
	@$(DOCKER) attach $(container_id)

release:
	@echo $(DOCKER_PASSWORD) | $(DOCKER) login -u $(DOCKER_USERNAME) --password-stdin
	$(DOCKER) push $(RELEASE) 

.PHONY: all build release clean
