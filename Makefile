IMAGE=kern3.img
DEF=kern3.def
#Tested on Singularity v2.4.1

.PHONY: bootstrap

all: bootstrap

bootstrap:
	sudo singularity build ${IMAGE} ${DEF}

upgrade:
	sudo singularity exec --writable ${IMAGE} apt-get update
	sudo singularity exec --writable ${IMAGE} apt-get upgrade

clean:
	rm -f ${IMAGE}
