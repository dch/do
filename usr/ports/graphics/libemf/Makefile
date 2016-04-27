# Created by: NAKATA Maho <maho@FreeBSD.org>
# $FreeBSD: head/graphics/libemf/Makefile 356498 2014-06-04 13:34:37Z amdmi3 $

PORTNAME=	libEMF
PORTVERSION=	1.0.7
PORTREVISION=	1
CATEGORIES=	graphics
MASTER_SITES=	SF

MAINTAINER=	maho@FreeBSD.org
COMMENT=	Enhanced Metafile Library

OPTIONS_DEFINE=	DOCS

USES=		libtool
GNU_CONFIGURE=	yes

post-install:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/html/* ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
