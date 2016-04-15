SPK_NAME = php
SPK_VERS =5.6
SPK_REV = 1
SPK_ICON = src/php.png

DEPENDS  = cross/$(SPK_NAME)

MAINTAINER = GoodOmens83
DESCRIPTION = PHP is a popular general-purpose scripting language that is especially suited to web development.
RELOAD_UI = yes
STARTABLE = no
DISPLAY_NAME = php
CHANGELOG = "1. Update to Python 2.7.11<br>2. Add psutil module<br>3. Update modules"

HOMEPAGE   = http://www.php.net
LICENSE    = PSF

INSTALLER_SCRIPT = src/installer.sh
SSS_SCRIPT       = src/dsm-control.sh

INSTALL_PREFIX = /usr/local/$(SPK_NAME)

POST_STRIP_TARGET = php_extra_install

include ../../mk/spksrc.spk.mk

.PHONY: php_extra_install
php_extra_install:
	install -m 755 -d $(STAGING_DIR)/etc
	install -m 755 src/etc/php.ini $(STAGING_DIR)/var/php/php.ini
	install -m 755 -d $(STAGING_DIR)/share
