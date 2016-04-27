# Created by: jessekempf@gmail.com
# $FreeBSD: head/devel/py-daemon/Makefile 367070 2014-09-02 18:04:44Z sunpoet $

PORTNAME=	daemon
PORTVERSION=	1.6
PORTREVISION=	1
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	python-daemon-${PORTVERSION}

MAINTAINER=	jessekempf@gmail.com
COMMENT=	Well-behaved daemon framework for Python

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}lockfile>=0.9:${PORTSDIR}/devel/py-lockfile
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PYTHON=	autoplist distutils
USES=		python:2

.include <bsd.port.mk>
