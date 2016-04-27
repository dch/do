# $FreeBSD: head/comms/hidapi/Makefile 387986 2015-05-30 21:25:06Z mat $

PORTNAME=	hidapi
DISTVERSIONPREFIX=	${PORTNAME}-
DISTVERSION=	0.8.0-rc1
PORTREVISION=	3
CATEGORIES=	comms

MAINTAINER=	tijl@FreeBSD.org
COMMENT=	Library to access USB HID-class devices

LICENSE=	BSD3CLAUSE GPLv3
LICENSE_COMB=	dual

USE_GITHUB=	yes
GH_ACCOUNT=	signal11

USES=		autoreconf iconv:wchar_t libtool
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
INSTALL_TARGET=	install-strip
PORTDOCS=	*

.include <bsd.port.mk>
