BASENAME ?= envs.net
PREFIX ?= /usr/local
MANDIR ?= $(PREFIX)/share/man


install:
	@echo Installing the manual page to $(MANDIR)/man7
	@mkdir -p $(MANDIR)/man7
	@cp -f $(BASENAME).7 $(MANDIR)/man7/$(BASENAME).7
	@chmod 644 $(MANDIR)/man7/$(BASENAME).7


uninstall:
	@echo Removing the manual page from $(MANDIR)/man7
	@rm -f $(BINDIR)/man7/$(BASENAME).7


.PHONY: install uninstall
