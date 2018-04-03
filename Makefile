.PHONY:	all
all:	doc lib

.PHONY:	lib
lib:
	$(MAKE) --directory src

.PHONY:	doc
doc:
	$(MAKE) --directory doc

.PHONY:	test
test:	
	$(MAKE) --directory src $@

.PHONY:	clean-pam_python
clean-pam_python:
	rm -rf pam_python

.PHONY:	clean
clean: clean-pam_python
	$(MAKE) --directory doc $@
	$(MAKE) --directory src $@

.PHONY:	install
install: install-doc install-lib

.PHONY:	install-doc
install-doc: clean-pam_python
	$(MAKE) --directory doc $@

.PHONY:	install-lib
install-lib: clean-pam_python
	$(MAKE) --directory src $@

release-project-clean:: clean
