TAG = owl:0.0.0
VOLUMES = --volume="${PWD}:/usr/src/owl"


build:
	docker build . --tag ${TAG}

shell: build
	docker run -it --rm ${VOLUMES} ${TAG} bash
