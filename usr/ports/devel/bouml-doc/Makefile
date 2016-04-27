# Created by: Thierry Thomas <thierry@pompo.net>
# $FreeBSD: head/devel/bouml-doc/Makefile 345051 2014-02-19 09:47:36Z ehaupt $

PORTNAME=	bouml-doc
PORTVERSION=	4.23
CATEGORIES=	devel
MASTER_SITES=	SF/bouml/doc/${PORTVERSION}_ultimate/
DISTNAME=	doc${PORTVERSION}

MAINTAINER=	thierry@FreeBSD.org
COMMENT=	Reference manual of BOUML

NO_BUILD=	yes
WRKSRC=		${WRKDIR}/doc
DOCSDIR=	${PREFIX}/share/doc/bouml

do-install:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	(cd ${WRKSRC} && ${COPYTREE_SHARE} \* ${STAGEDIR}${DOCSDIR})

.include <bsd.port.mk>
