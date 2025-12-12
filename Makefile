.PHONY: all run watch
all:
run:
watch:

.PHONY: doc
doc:
	rsync -r $(HOME)/metadoc/$(APP)/ doc/$(APP)/

.PHONY: sync
sync: doc
