APP     = $(notdir $(CURDIR))
REL     = $(shell git rev-parse --short=4    HEAD)
BRANCH  = $(shell git rev-parse --abbrev-ref HEAD)
NOW     = $(shell date +%y%m%d)
BINFILE = $(APP)_$(HW)_$(BRANCH)_$(NOW)
HW     ?= pc

.PHONY: all run watch
all:
run:
watch:

.PHONY: doc
doc:
	rsync -r $(HOME)/metadoc/$(APP)/ doc/$(APP)/

.PHONY: sync
sync: doc

.PHONY: ai tmp/$(APP).ai.md
ai: tmp/$(APP).ai.md
tmp/$(APP).ai.md: doc
	cat doc/ai.md README.md doc/$(APP)/$(APP).md > $@ ; touch $@
