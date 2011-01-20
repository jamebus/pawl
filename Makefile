PREFIX?=$(HOME)

INSTALL_CMD=install
#
# Commented out by default to avoid install(1) throwing errors when folks
# install this into their $HOME.  If installing system-wide, be sure to set
# these if needed.
#
#INSTALL_USER?=-o root
#INSTALL_GROUP?=-g wheel
INSTALL_MODE?=-m 0555

all:

install: pawl
	$(INSTALL_CMD) $(INSTALL_USER) $(INSTALL_GROUP) $(INSTALL_MODE) \
		pawl $(PREFIX)/bin

.PHONY: all install
