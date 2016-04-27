# Created by: jessekempf@gmail.com
# $FreeBSD: head/devel/py-mock/Makefile 371280 2014-10-20 16:04:12Z mva $

PORTNAME=	mock
PORTVERSION=	1.0.1
PORTREVISION=	1
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	jessekempf@gmail.com
COMMENT=	Mock unit tests for Python

LICENSE=	BSD2CLAUSE

OPTIONS_DEFINE=	TESTS
TESTS_DESC=	Install tox for running unit tests

USES=		python
USE_PYTHON=	distutils autoplist

TESTS_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}tox>0:${PORTSDIR}/devel/py-tox

.include <bsd.port.mk>
