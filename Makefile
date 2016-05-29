LOCALE_KF5 = $(DESTDIR)/usr/share/locale
LOCALE_KDE4 = $(DESTDIR)/usr/share/locale/kde4
INSTALL = install -d
CP = cp -rf
RM = -rm -rf

all:

install: local

clear:
	$(RM) $(LOCALE_KF5)/*/LC_MESSAGES/{k3b,k3bsetup,kio_videodvd,libk3bdevice,libk3b}.mo
	$(RM) $(LOCALE_KDE4)/*/LC_MESSAGES/{k3b,k3bsetup,kio_videodvd,libk3bdevice,libk3b}.mo

	
local:
	$(INSTALL) $(LOCALE_KF5)
	$(INSTALL) $(LOCALE_KDE4)
	
	$(CP) l10n/* $(LOCALE_KF5)
	$(CP) l10n/* $(LOCALE_KDE4)

uninstall: clear
