# Created by: Johannes Meixner <xmj@chaot.net>
# $FreeBSD: head/print/linux-c6-cups-libs/Makefile 393817 2015-08-09 19:14:13Z netchild $

PORTNAME=	cups-libs
PORTVERSION=	1.4.2
PORTREVISION=	3
CATEGORIES=	print linux
MASTER_SITES=	CENTOS_LINUX_UPDATES

MAINTAINER=	emulation@FreeBSD.org
COMMENT=	Common UNIX Printing System libraries

USE_LINUX=	c6
USE_LINUX_RPM=	yes
USE_LINUX_APPS=	gnutls
SRC_DISTFILES=	cups-${PORTVERSION}-${RPMVERSION}${SRC_SUFX}:SOURCE
RPMVERSION=	67.el6_6.1
USE_LDCONFIG=	yes

DESCR=		${.CURDIR}/../cups-base/pkg-descr

.include <bsd.port.mk>
