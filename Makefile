TAG = owl:0.0.0
VOLUMES = --volume="${PWD}:/usr/src/owl"


build:
	docker build . --tag ${TAG}

shell:
	docker run -it --rm ${VOLUMES} ${TAG} bash

run:
	docker run -it --rm ${VOLUMES} ${TAG} ${CMD}
