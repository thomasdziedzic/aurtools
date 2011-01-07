all:

install:
	install -d $(DESTDIR)/usr/share/aurtools
	install -m644 pacman-aur.conf $(DESTDIR)/usr/share/aurtools
	install -d $(DESTDIR)/usr/bin
	install aurtoolsbuild $(DESTDIR)/usr/bin
	ln -s /usr/bin/aurtoolsbuild $(DESTDIR)/usr/bin/aur-{i686,x86_64)-build

uninstall:
	rm -rf $(DESTDIR)/usr/share/aurtools
	rm $(DESTDIR)/usr/bin/aurtoolsbuild
	rm $(DESTDIR)/usr/bin/aur-{i686,x86_64)-build
