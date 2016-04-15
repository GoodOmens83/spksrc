#!/bin/sh

# Package
PACKAGE="php"
DNAME="php"

# Others
INSTALL_DIR="/usr/local/${PACKAGE}"
PATH="${INSTALL_DIR}/bin:${PATH}"


preinst ()
{
    exit 0
}

postinst ()
{
    # Link
    ln -s ${SYNOPKG_PKGDEST} ${INSTALL_DIR}

    # Install busybox stuff
    ${INSTALL_DIR}/bin/busybox --install ${INSTALL_DIR}/bin


    # Log installation informations
    ${INSTALL_DIR}/bin/php --version > ${INSTALL_DIR}/install.log 2>&1
    echo "" >> ${INSTALL_DIR}/install.log
    echo "System installed modules:" >> ${INSTALL_DIR}/install.log
    ${INSTALL_DIR}/bin/php -m >> ${INSTALL_DIR}/install.log

    exit 0
}

preuninst ()
{
    exit 0
}

postuninst ()
{
    # Remove link
    rm -f ${INSTALL_DIR}

    exit 0
}

preupgrade ()
{
    exit 0
}

postupgrade ()
{
    exit 0
}

