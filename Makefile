DESTDIR ?= "$(CURDIR)/install"

classic: gadget

gadget:
	mkdir -p $(DESTDIR)/meta
	cp gadget.yaml $(DESTDIR)/meta/gadget.yaml
