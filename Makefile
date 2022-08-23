# Copyright 2021 Iguazio
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
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

