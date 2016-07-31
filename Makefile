LOCALE_KF5 = $(DESTDIR)/usr/share/locale
INSTALL = install -d
CP = cp -rf
RM = rm -rf

all:

install: local

clear:
	$(RM) $(LOCALE_KF5)/*/LC_MESSAGES/{k3b,k3bsetup,kio_videodvd,libk3bdevice,libk3b}.mo

	
local:
	$(INSTALL) $(LOCALE_KF5)
	
	$(CP) l10n/* $(LOCALE_KF5)

uninstall: clear
