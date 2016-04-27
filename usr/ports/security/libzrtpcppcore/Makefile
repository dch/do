# $FreeBSD: head/security/libzrtpcppcore/Makefile 384122 2015-04-16 19:08:09Z tijl $

PORTNAME=	libzrtpcppcore
DISTVERSIONPREFIX=	V
DISTVERSION=	4.3.1
PORTREVISION=	1
CATEGORIES=	security

MAINTAINER=	ports@FreeBSD.org
COMMENT=	GNU ZRTP library

LICENSE=	LGPL3
LICENSE_FILE=	${WRKSRC}/COPYING

USE_GITHUB=	yes
GH_ACCOUNT=	wernerd
GH_PROJECT=	ZRTPCPP

USES=		cmake:outsource
CMAKE_ARGS=	-DCORE_LIB=true
USE_LDCONFIG=	yes

.include <bsd.port.mk>
