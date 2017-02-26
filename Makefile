#!/usr/bin/make -f

SOURCEDIR	=	l10n
PREFIX		= 	/usr
LOCALEDIR 	= 	$(DESTDIR)$(PREFIX)/share/locale
MKD 		= 	install -d
COPY 		= 	cp -rf
DEL 		= 	rm -rf
MOF		=	{k3b,k3bsetup,kio_videodvd,libk3bdevice,libk3b}.mo

install:
	$(MKD) $(LOCALEDIR)
	$(COPY) $(SOURCEDIR)/* $(LOCALEDIR)

uninstall:
	$(DEL) $(LOCALEDIR)/*/LC_MESSAGES/$(MOF)
