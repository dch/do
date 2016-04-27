# Created by: ijliao
# $FreeBSD: head/misc/chmlib/Makefile 370105 2014-10-05 19:03:12Z tijl $

PORTNAME=	chmlib
PORTVERSION=	0.40
PORTREVISION=	1
CATEGORIES=	misc
MASTER_SITES=	http://www.jedrea.com/chmlib/

MAINTAINER=	fluffy@FreeBSD.org
COMMENT=	Library for dealing with Microsoft ITSS/CHM format files

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-io64 --disable-pread --exec-prefix=${PREFIX} --disable-static --enable-examples
INSTALL_TARGET=	install-strip
USES=		gmake libtool tar:bzip2
USE_LDCONFIG=	yes

.include <bsd.port.mk>
