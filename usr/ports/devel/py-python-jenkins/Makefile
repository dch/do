# Created by: Li-Wen Hsu <lwhsu@FreeBSD.org>
# $FreeBSD: head/devel/py-python-jenkins/Makefile 391875 2015-07-13 03:26:50Z lwhsu $

PORTNAME=	python-jenkins
PORTVERSION=	0.4.7
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	lwhsu@FreeBSD.org
COMMENT=	Python bindings for the remote Jenkins API

LICENSE=	BSD3CLAUSE

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pbr>=0.8.2:${PORTSDIR}/devel/py-pbr
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pbr>=0.8.2:${PORTSDIR}/devel/py-pbr \
		${PYTHON_PKGNAMEPREFIX}six>0:${PORTSDIR}/devel/py-six

USES=		python
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
