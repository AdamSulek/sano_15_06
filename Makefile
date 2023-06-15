DOCKER_USERNAME ?= adamsulek91
APPLICATION_NAME ?= hello-world
 
GIT_HASH ?= $(shell git log --format="%h" -n 1)

all: build push

build:
	docker build --tag ${DOCKER_USERNAME}/${APPLICATION_NAME} .

push:
	docker push ${DOCKER_USERNAME}/${APPLICATION_NAME}