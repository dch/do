# Created by: Dryice Liu<dryice@dryice.name>
# $FreeBSD: head/devel/py-babel/Makefile 393255 2015-07-30 18:47:28Z olivierd $

PORTNAME=	Babel
PORTVERSION=	2.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	gaod@hychen.org
COMMENT=	Collection of tools for internationalizing Python applications

LICENSE=	BSD3CLAUSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pytz>0:${PORTSDIR}/devel/py-pytz

USES=		python
USE_PYTHON=	autoplist concurrent distutils

PORTDOCS=	docs/*

OPTIONS_DEFINE=	DOCS

post-install:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
.for docfile in ${PORTDOCS}
	${CP} -r ${WRKSRC}/${docfile} ${STAGEDIR}${DOCSDIR}
.endfor

.include <bsd.port.mk>
