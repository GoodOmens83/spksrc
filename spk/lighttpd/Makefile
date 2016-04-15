SPK_NAME = lighttpd
SPK_VERS = 1.4.39
SPK_REV = 1
SPK_ICON = src/lighttpd.png
DSM_UI_DIR = app

DEPENDS  = cross/php cross/lighttpd
#SPK_DEPENDS = "python>2.7.3-3:git"

MAINTAINER = GoodOmens83
DESCRIPTION = "Security, speed, compliance, and flexibility -- all of these describe lighttpd (pron. lighty) which is rapidly redefining efficiency of a webserver; as it is designed and optimized for high performance environments."
ADMIN_PORT = 8085
RELOAD_UI = yes
DISPLAY_NAME = lighttpd
CHANGELOG = "Initial release"

HOMEPAGE   = http://lighttpd.net
LICENSE    = GPL

WIZARDS_DIR = src/wizard/

INSTALLER_SCRIPT = src/installer.sh
SSS_SCRIPT       = src/dsm-control.sh
FWPORTS          = src/${SPK_NAME}.sc

INSTALL_PREFIX = /usr/local/$(SPK_NAME)

POST_STRIP_TARGET = lighttpd_extra_install

include ../../mk/spksrc.spk.mk

.PHONY: lighttpd_extra_install
lighttpd_extra_install:
	install -m 755 -d $(STAGING_DIR)/log
	install -m 755 -d $(STAGING_DIR)/www
	install -m 755 -d $(STAGING_DIR)/etc
	install -m 755 src/etc/lighttpd.conf $(STAGING_DIR)/etc/lighttpd.conf
	install -m 755 src/etc/modules.conf $(STAGING_DIR)/etc/modules.conf
	install -m 744 -d $(STAGING_DIR)/etc/conf.d
	install -m 755 src/etc/conf.d/* $(STAGING_DIR)/etc/conf.d
	install -m 755 -d $(STAGING_DIR)/var
	install -m 755 -d $(STAGING_DIR)/var/php
	install -m 600 src/config.ini $(STAGING_DIR)/var/config.ini
	install -m 755 src/etc/php.ini $(STAGING_DIR)/var/php/php.ini
	install -m 755 -d $(STAGING_DIR)/app
	install -m 644 src/app/config $(STAGING_DIR)/app/config
	install -m 755 -d $(STAGING_DIR)/app/images
	for size in 16 24 32 48 72; do \
		convert $(SPK_ICON) -thumbnail $${size}x$${size} \
		        $(STAGING_DIR)/app/images/$(SPK_NAME)-$${size}.png ; \
	done
