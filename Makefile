DESTDIR ?= "$(CURDIR)/install"

classic: gadget grub-config

gadget:
	mkdir -p $(DESTDIR)/meta
	cp gadget.yaml $(DESTDIR)/meta/gadget.yaml

grub-config:
	mkdir -p $(DESTDIR)
	install -m 644 grub.cfg $(DESTDIR)/
