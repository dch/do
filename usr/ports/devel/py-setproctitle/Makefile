# Created by: Sofian Brabez <sbrabez@gmail.com>
# $FreeBSD: head/devel/py-setproctitle/Makefile 371280 2014-10-20 16:04:12Z mva $

PORTNAME=	setproctitle
PORTVERSION=	1.1.8
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	sbz@FreeBSD.org
COMMENT=	Allow customization of the process title

LICENSE=	BSD3CLAUSE

USES=		python
USE_PYTHON=	distutils autoplist

PORTDOCS=	COPYRIGHT HISTORY.rst README.rst

OPTIONS_DEFINE=	DOCS

post-install:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
