# Variables
IMAGE_NAME = helloworld
CONTAINER_NAME = helloworld_container

# default target
all: build start

build:
	docker build -t $(IMAGE_NAME) .

start:
	docker run -it --rm --name $(CONTAINER_NAME) $(IMAGE_NAME)

stop:
	docker stop $(CONTAINER_NAME) || true
	docker rm $(CONTAINER_NAME) || true

# Restart the Docker container
restart: stop start

# Clean up
clean: stop
	docker rmi $(IMAGE_NAME) || true

.PHONY: all build start stop restart clean
