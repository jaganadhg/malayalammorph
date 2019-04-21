SHELL = /bin/sh

SUBDIRS = dict morph/bin converters

.PHONY: $(SUBDIRS)

all: $(SUBDIRS)

$(SUBDIRS): 
	export LANG=C
	$(MAKE) -C $@

clean:
	$(MAKE) -C dict clean
	$(MAKE) -C morph/noun/bin clean
	$(MAKE) -C converters clean
