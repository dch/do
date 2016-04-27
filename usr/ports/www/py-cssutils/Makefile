# Created by: ijliao
# $FreeBSD: head/www/py-cssutils/Makefile 394508 2015-08-17 14:20:40Z mat $

PORTNAME=	cssutils
PORTVERSION=	1.0
PORTREVISION=	1
PORTEPOCH=	1
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	CSS Cascading Style Sheets library for Python

LICENSE=	LGPL3

OPTIONS_DEFINE=	EXAMPLES

USE_PYTHON=	autoplist distutils
USES=		python zip

EXAMPLESDIR=	${PREFIX}/share/examples/py-${PORTNAME}
PORTEXAMPLES=	*

post-install:
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}/
	${INSTALL_DATA} ${WRKSRC}/examples/* ${STAGEDIR}${EXAMPLESDIR}/

.include <bsd.port.mk>
