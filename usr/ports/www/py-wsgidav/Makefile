# $FreeBSD: head/www/py-wsgidav/Makefile 372235 2014-11-06 19:53:37Z marino $

PORTNAME=	WsgiDAV
PORTVERSION=	1.1.0
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	yan_jingfeng@yahoo.com
COMMENT=	WSGI based WebDAV server for sharing resources

LICENSE=	MIT

USES=		python:2 zip
USE_PYTHON=	distutils autoplist

post-extract:
	${RM} -r ${WRKSRC}/tests

.include <bsd.port.mk>
