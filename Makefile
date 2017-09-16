BUNDLE ?= bundle
GEM    ?= gem
PANDOC ?= pandoc

PACKAGE := drylib
VERSION := $(shell cat VERSION)

SOURCES := $(wildcard lib/*.rb lib/*/*.rb)

TARGETS := pkg/$(PACKAGE)-$(VERSION).gem

%.html: %.rst
	$(PANDOC) -o $@ -t html5 -s $<

pkg/$(PACKAGE)-$(VERSION).gem: drylib.gemspec $(SOURCES)
	$(BUNDLE) exec rake build

all: build

build: $(TARGETS)

check: Rakefile
	$(BUNDLE) exec rake test

dist: $(TARGETS)

install: Rakefile $(TARGETS)
	$(BUNDLE) exec rake install

uninstall:
	$(GEM) uninstall drylib --version $(VERSION)

clean: Rakefile
	$(BUNDLE) exec rake clean
	@rm -f *~ $(TARGETS)

distclean: Rakefile clean
	$(BUNDLE) exec rake clobber

mostlyclean: clean

.PHONY: check dist install clean distclean mostlyclean
.SECONDARY:
.SUFFIXES:
