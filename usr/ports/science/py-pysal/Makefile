# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: head/science/py-pysal/Makefile 367888 2014-09-10 20:50:31Z gerald $

PORTNAME=	pysal
PORTVERSION=	1.8.0
PORTREVISION=	1
CATEGORIES=	science python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	PySAL-${PORTVERSION}

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Cross-platform library of spatial analysis functions

LICENSE=	BSD3CLAUSE

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}numpy>=1.3:${PORTSDIR}/math/py-numpy \
		${PYTHON_PKGNAMEPREFIX}scipy>=0.7:${PORTSDIR}/science/py-scipy
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PYTHON=	autoplist distutils
USES=		python:2

.include <bsd.port.mk>
