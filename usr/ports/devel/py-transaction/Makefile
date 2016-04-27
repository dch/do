# Created by: Wen Heping <wenheping@gmail.com>
# $FreeBSD: head/devel/py-transaction/Makefile 371280 2014-10-20 16:04:12Z mva $

PORTNAME=	transaction
PORTVERSION=	1.4.1
PORTREVISION=	1
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	cs@FreeBSD.org
COMMENT=	Transaction management for Python

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}zope.interface>=3.5.2:${PORTSDIR}/devel/py-zope.interface
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		python zip
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
