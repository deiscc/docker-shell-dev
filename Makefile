VERSION ?= $(shell git describe --tags --exact-match 2>/dev/null || echo latest)

SHORT_NAME := shell-dev
IMAGE_PREFIX ?= deiscc
IMAGE := ${IMAGE_PREFIX}/${SHORT_NAME}:${VERSION}

build:
	docker build -t ${IMAGE} .

push: build
	docker push ${IMAGE}
