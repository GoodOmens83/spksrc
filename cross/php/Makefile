PKG_NAME = php
PKG_VERS = 5.6.20
PKG_EXT = tar.gz
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)
PKG_DIST_NAME = $(PKG_DIR).$(PKG_EXT)
PKG_DIST_SITE = http://php.net/distributions/

UNSUPPORTED_ARCHS = 88f5281 powerpc ppc824x ppc854x
DEPENDS = cross/zlib cross/libxml2

HOMEPAGE = http://xmlrpc-c.sourceforge.net/
COMMENT  = Programming library for writing an XML-RPC server or client in C or C++.
LICENSE  = BSD

PRE_CONFIGURE_TARGET = myPreConfigure
GNU_CONFIGURE = 1
CONFIGURE_ARGS +=-prefix=$(INSTALL_DIR)$(INSTALL_PREFIX) --with-mysql --with-mysqli --enable-json --enable-cgi --enable-simplexml --enable-libxml --disable-mbregex --enable-sockets --enable-fpm --disable-opcache --without-sqlite3 --without-pdo-sqlite --without-pear --with-libxml-dir=$(INSTALL_DIR)$(INSTALL_PREFIX) --with-config-file-path=/usr/local/lighttpd/var/php --disable-all

ENV += PATH=$(INSTALL_DIR)$(INSTALL_PREFIX)/bin:$$PATH

include ../../mk/spksrc.cross-cc.mk
