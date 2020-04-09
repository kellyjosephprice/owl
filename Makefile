TAG=owl:0.0.0

build:
	docker build . --tag ${TAG}

shell: build
	docker run -it --rm ${TAG} bash
