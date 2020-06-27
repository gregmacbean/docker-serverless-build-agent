SERVERLESS_VERSION = 1.60.0
IMAGE_NAME ?= docker-serverless-build-agent:$(SERVERLESS_VERSION)
TAG = $(SERVERLESS_VERSION)

build:
	docker build -t $(IMAGE_NAME) .

pull:
	docker pull $(IMAGE_NAME)

shell:
	docker run --rm -it -v $(PWD):/opt/app $(IMAGE_NAME) bash