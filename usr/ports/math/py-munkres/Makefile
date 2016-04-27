# Created by: Mark Felder <feld@FreeBSD.org>
# $FreeBSD: head/math/py-munkres/Makefile 374217 2014-12-07 16:31:50Z feld $

PORTNAME=	munkres
PORTVERSION=	1.0.5.4
PORTREVISION=	2
CATEGORIES=	math python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	feld@FreeBSD.org
COMMENT=	Python implementation of the munkres algorithm

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		python
USE_PYTHON=	distutils

PLIST_FILES=	%%PYTHON_SITELIBDIR%%/munkres.py \
		%%PYTHON_SITELIBDIR%%/munkres.pyc \
		%%PYTHON_SITELIBDIR%%/munkres.pyo

.include <bsd.port.mk>
