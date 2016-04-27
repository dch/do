# Created by: Ju Pengfei <jupengfei@gmail.com>
# $FreeBSD: head/science/pynn/Makefile 371453 2014-10-24 16:50:42Z mva $

PORTNAME=	pynn
PORTVERSION=	0.7.5
PORTREVISION=	3
CATEGORIES=	science python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	PyNN-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Simulator-independent language for building neuronal network models

BUILD_DEPENDS=	${PYNUMPY}
RUN_DEPENDS=	${PYNUMPY}

USES=		python
USE_PYTHON=	distutils
PYDISTUTILS_PKGNAME=	PyNN

.include <bsd.port.mk>
