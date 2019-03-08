################################################################################
#
# libbinder
#
################################################################################

LIBBINDER_VERSION = 1.0.0
LIBBINDER_SITE = $(CURDIR)/package/libbinder/src
LIBBINDER_SITE_METHOD = local
LIBBINDER_INSTALL_STAGING = YES
LIBBINDER_DEPENDENCIES := liblog


define LIBBINDER_CONFIGURE_CMDS
  $(SED) "1a\CC=$(TARGET_CC)" $(@D)/Makefile; \
  $(SED) "2a\CXX=$(TARGET_CXX)" $(@D)/Makefile; \
  $(SED) "3a\CFLAGS=$(TARGET_CFLAGS)" $(@D)/Makefile; \
  $(SED) "4a\TOPDIR=$(TOPDIR)" $(@D)/Makefile
endef

define LIBBINDER_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D) all
endef

define HOST_LIBBINDER_BUILD_CMDS
	$(HOST_MAKE_ENV) $(MAKE) -C $(@D) all
endef

define LIBBINDER_INSTALL_STAGING_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) LDCONFIG=true install
endef

define LIBBINDER_INSTALL_TARGET_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D) DESTDIR=$(TARGET_DIR) LDCONFIG=true install
endef

define HOST_LIBBINDER_INSTALL_CMDS
	$(HOST_MAKE_ENV) $(MAKE) -C $(@D) LDCONFIG=true install
endef

$(eval $(generic-package))
$(eval $(host-generic-package))
