TAG?=gcr.io/holidayhack2020/$(shell basename `pwd`):latest

all: build

# Create a properly-named docker container
build:
	docker build -t "${TAG}" .

run: build
	docker run --rm -ti "${TAG}"

clean:
	docker rmi "${TAG}"

push: build
	docker push "${TAG}"
