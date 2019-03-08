# export env for mk.

MODULES=
CLEANS=
INSTALLS=

DESTDIR := $(TOPDIR)/output/target

-include liblog/Makefile
-include servicemanager/Makefile
-include binder/Makefile

.PHONY: all
all: $(MODULES)

clean: $(CLEANS)

install: $(INSTALLS)
