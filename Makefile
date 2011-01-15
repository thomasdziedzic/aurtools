all:

install:
	install -d $(DESTDIR)/usr/share/aurtools
	install -m644 pacman-aur.conf $(DESTDIR)/usr/share/aurtools
	install -d $(DESTDIR)/usr/bin
	install aurtoolsbuild $(DESTDIR)/usr/bin
	ln -sf /usr/bin/aurtoolsbuild $(DESTDIR)/usr/bin/aur-i686-build
	ln -sf /usr/bin/aurtoolsbuild $(DESTDIR)/usr/bin/aur-x86_64-build
	install -d $(DESTDIR)/etc
	install -m644 aurtools.conf $(DESTDIR)/etc

uninstall:
	rm -rf $(DESTDIR)/usr/share/aurtools
	rm $(DESTDIR)/usr/bin/aurtoolsbuild
	rm $(DESTDIR)/usr/bin/aur-i686-build
	rm $(DESTDIR)/usr/bin/aur-x86_64-build
	rm $(DESTDIR)/etc/aurtools.conf
