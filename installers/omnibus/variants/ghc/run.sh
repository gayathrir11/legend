#!/bin/bash

source .env

docker run \
	--platform=linux/amd64 \
	-it \
	-p $LEGEND_OMNIBUS_SUPERVISOR_PORT:$LEGEND_OMNIBUS_SUPERVISOR_PORT \
	-p $LEGEND_OMNIBUS_SUPERVISOR_DIRECTORY_SERVER_PORT:$LEGEND_OMNIBUS_SUPERVISOR_DIRECTORY_SERVER_PORT \
	-p $LEGEND_OMNIBUS_NGINX_PORT:$LEGEND_OMNIBUS_NGINX_PORT \
	-p $LEGEND_OMNIBUS_ENGINE_PORT:$LEGEND_OMNIBUS_ENGINE_PORT \
	-p $LEGEND_OMNIBUS_SDLC_PORT:$LEGEND_OMNIBUS_SDLC_PORT \
	-p $LEGEND_OMNIBUS_STUDIO_PORT:$LEGEND_OMNIBUS_STUDIO_PORT \
	-p 6910:5432 \
	--env LEGEND_OMNIBUS_CONFIG_SDLC_MODE="file-system" \
	legend-omnibus:latest-ghc
