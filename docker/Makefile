IMAGE = stable_diffusion_walk

all: help

help:
	@echo "Available make targets:"
	@echo "====================================================="
	@fgrep -h '##' $(MAKEFILE_LIST) | fgrep -v fgrep | sed 's/\\$$//' | sed 's/##//'


clean:        ## remove Docker image
	-docker rmi -f $(IMAGE)

build:        ## build Docker image
	@docker build -t $(IMAGE) .
