PKG_NAME = lighttpd
PKG_VERS = 1.4.39
PKG_EXT = tar.gz
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)
PKG_DIST_NAME = $(PKG_DIR).$(PKG_EXT)
PKG_DIST_SITE = http://download.lighttpd.net/lighttpd/releases-1.4.x/

UNSUPPORTED_ARCHS = 88f5281 powerpc ppc824x ppc854x
DEPENDS = cross/zlib cross/pcre cross/bzip2

HOMEPAGE = http://xmlrpc-c.sourceforge.net/
COMMENT  = Programming library for writing an XML-RPC server or client in C or C++.
LICENSE  = BSD

PRE_CONFIGURE_TARGET = myPreConfigure
GNU_CONFIGURE = 1

ENV += PATH=$(INSTALL_DIR)/$(INSTALL_PREFIX)/bin:$$PATH

include ../../mk/spksrc.cross-cc.mk
