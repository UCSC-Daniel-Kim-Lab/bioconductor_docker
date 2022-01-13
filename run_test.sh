#!/bin/bash

# Roman Reggiardo <rreggiar@ucsc.edu>

DATA='/public/groups/kimlab/aale-KRAS-G12-transformation/data:/home/${USER}/data'
NOTEBOOKS='/public/groups/kimlab/aale-KRAS-G12-transformation/notebooks:/home/${USER}/notebooks'
FIGURES='/public/groups/kimlab/aale-KRAS-G12-transformation/figures:/home/${USER}/figures'
BIN='/public/groups/kimlab/aale-KRAS-G12-transformation/bin:/home/${USER}/bin'
R='/public/groups/kimlab/aale-KRAS-G12-transformation/R:/home/${USER}/R'
REFERENCE='/public/groups/kimlab/genomes.annotations/gencode.35:/home/$(USER)/reference'
USER_ID=$(shell id -u)
OUTPUT='/public/groups/kimlab/aale-KRAS-G12-transformation/output.data:/home/${USER}/output.data'
CONFIG='/public/home/${USER}/.rstudio_docker_config:/home/${USER}/.config/rstudio'
#-v ${DATA} \
#-v ${NOTEBOOKS} \
#-v ${FIGURES} \
#-v ${BIN} \
#-v ${R} \
#-v ${REFERENCE} \
#-v ${OUTPUT} \

@echo 'making rstudio session hosted at 127 0 0 1 2828 8787 for ${USER}:${USER_ID}'
docker run --rm -p 127.0.0.1:3838:8787 -e DISABLE_AUTH=true \
	-e USER=${USER} \
	-e USERID=${USER_ID} \
	--detach \
	-v ${CONFIG} \
	kimlab_rstudio:latest
