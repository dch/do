# Created by: Wen Heping <wenheping@gmail.com>
# $FreeBSD: head/science/py-hcluster/Makefile 377743 2015-01-23 15:21:52Z antoine $

PORTNAME=	hcluster
PORTVERSION=	0.2.0
PORTREVISION=	7
CATEGORIES=	science python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	wenheping@gmail.com
COMMENT=	Hierarchical Clustering Package For Scipy

BUILD_DEPENDS=	${PYNUMPY} \
		${PYTHON_PKGNAMEPREFIX}matplotlib>0:${PORTSDIR}/math/py-matplotlib
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		python
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
