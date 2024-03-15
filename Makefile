DESTDIR=$(HOME)/Library/Developer/Xcode/Templates/File\ Templates/Source

# Templates
UNIT-TEST-TEMPLATE="Zero Unit Test.xctemplate"

install: uninstall
	mkdir -p $(DESTDIR)
	cp -R $(UNIT-TEST-TEMPLATE) $(DESTDIR)

uninstall:
	rm -rf $(DESTDIR)/$(UNIT-TEST-TEMPLATE)
