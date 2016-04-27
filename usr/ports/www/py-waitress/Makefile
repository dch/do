# Created by: Olivier Duchateau
# $FreeBSD: head/www/py-waitress/Makefile 366562 2014-08-29 20:57:09Z olivierd $

PORTNAME=	waitress
PORTVERSION=	0.8.9
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	olivierd@FreeBSD.org
COMMENT=	Python WSGI server

LICENSE=	ZPL21

USES=	python
USE_PYTHON=	distutils autoplist

pre-patch:
	@${CP} ${FILESDIR}/MANIFEST.in ${WRKSRC}

.include <bsd.port.mk>
