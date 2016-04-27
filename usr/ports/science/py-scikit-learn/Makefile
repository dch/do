# Created by: Dmitry Sivachenko <demon@FreeBSD.org>
# $FreeBSD: head/science/py-scikit-learn/Makefile 386312 2015-05-14 10:15:04Z mat $

PORTNAME=	scikit-learn
PORTVERSION=	0.16.0
CATEGORIES=	science python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	demon@FreeBSD.org
COMMENT=	Machine learning algorithms for python

BUILD_DEPENDS=	${PYNUMPY} \
		${PYTHON_SITELIBDIR}/scipy/version.py:${PORTSDIR}/science/py-scipy
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		fortran python
USE_PYTHON=	distutils autoplist

LDFLAGS+=	-shared

.include <bsd.port.mk>
