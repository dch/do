# Created by: Alexander Botero-Lowry <alex@foxybanana.com>
# $FreeBSD: head/devel/py-pyflakes/Makefile 371280 2014-10-20 16:04:12Z mva $

PORTNAME=	pyflakes
PORTVERSION=	0.8.1
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	koobs@FreeBSD.org
COMMENT=	Program to analyze Python programs and detect various errors

LICENSE=	MIT

USES=		python
USE_PYTHON=	distutils autoplist

regression-test: build
	@cd ${WRKSRC} && ${PYTHON_CMD} ${PYSETUP} test

.include <bsd.port.mk>
