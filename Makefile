TENSORFLOW_VERSION ?= 2.6.0
IGUAZIO_REPOSITORY ?= gcr.io/iguazio/


.PHONY: all
all: build push
	@echo Done.

.PHONY: build
build:
	docker build \
	--file ./Dockerfile \
	--tag $(IGUAZIO_REPOSITORY)tensorflow-wplugins:$(TENSORFLOW_VERSION) \
	--build-arg TENSORFLOW_VERSION=$(TENSORFLOW_VERSION) \
	.

.PHONY: push
push:
	docker push $(IGUAZIO_REPOSITORY)tensorflow-wplugins:$(TENSORFLOW_VERSION)

