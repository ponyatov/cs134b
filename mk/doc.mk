.PHONY: doc
doc:
	rm -rf doc/$(APP)/ ; rsync -r $(HOME)/metadoc/$(APP)/ doc/$(APP)/
	rm -rf doc/monday/ ; rsync -r $(HOME)/metadoc/monday/ doc/monday/
	git add $@

.PHONY: doxy
doxy: .doxygen doc/DoxygenLayout.xml doc/logo.png doc
	rm -rf doc/html ; doxygen $< 1>/dev/null
