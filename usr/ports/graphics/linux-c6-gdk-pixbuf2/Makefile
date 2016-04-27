# Created by: Kris Moore <kmoore@freebsd.org>
# $FreeBSD: head/graphics/linux-c6-gdk-pixbuf2/Makefile 372445 2014-11-11 13:06:39Z xmj $

PORTNAME=	gdk-pixbuf2
PORTVERSION=	2.24.1
CATEGORIES=	graphics linux

MAINTAINER=	emulation@FreeBSD.org
COMMENT=	RPM of the gdk-pixbuf lib (Linux CentOS ${LINUX_DIST_VER})

ONLY_FOR_ARCHS=	i386 amd64
USE_LINUX=	c6
USE_LINUX_RPM=	yes
RPMVERSION=	5.el6
LINUX_NAME=	lib${PORTNAME}
BRANDELF_DIRS=	usr/bin
USE_LDCONFIG=	yes
DESCR=		${.CURDIR}/../gdk-pixbuf2/pkg-descr

.include <bsd.port.mk>
