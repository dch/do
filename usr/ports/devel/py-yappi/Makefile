# Created by: Johannes Meixner <xmj@chaot.net>
# $FreeBSD: head/devel/py-yappi/Makefile 371280 2014-10-20 16:04:12Z mva $

PORTNAME=	yappi
PORTVERSION=	0.92
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	xmj@chaot.net
COMMENT=	Yet Another Python Profiler

LICENSE=	MIT

OPTIONS_DEFINE=	DOCS
PORTDOCS=	*

USES=		python
USE_PYTHON=	distutils autoplist

post-install:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
