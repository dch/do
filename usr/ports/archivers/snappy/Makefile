# Created by: Vanilla I. Shu <vanilla@FreeBSD.org>
# $FreeBSD: head/archivers/snappy/Makefile 358015 2014-06-16 15:16:17Z amdmi3 $

PORTNAME=	snappy
PORTVERSION=	1.1.1
PORTREVISION=	1
CATEGORIES=	archivers
MASTER_SITES=	GOOGLE_CODE

MAINTAINER=	vanilla@FreeBSD.org
COMMENT=	Fast compressor/decompressor library

LICENSE=	BSD3CLAUSE

OPTIONS_DEFINE=	DOCS

USES=		libtool
CONFIGURE_ARGS=	--disable-gtest
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
CFLAGS+=	-DNDEBUG

BROKEN_sparc64=	Does not compile on sparc64

.include <bsd.port.mk>
