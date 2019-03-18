PROJECT_DIR=$(shell git rev-parse --show-toplevel)
PROJECT=$(shell basename "$(PROJECT_DIR)")
TARGET=$(PROJECT)
DATE=$(shell date -u +"%Y-%m-%d %H:%M")

.PHONY: all distclean clean fix-hosts docs copy-confs copy-certs

all: aci
	@echo $<

aci: 
	@$(PROJECT_DIR)/bin/rkt --rebuild
