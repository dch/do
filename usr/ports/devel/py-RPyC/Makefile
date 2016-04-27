# Created by: Wen Heping <wenheping@gmail.com>
# $FreeBSD: head/devel/py-RPyC/Makefile 371280 2014-10-20 16:04:12Z mva $

PORTNAME=	rpyc
PORTVERSION=	3.3.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	kozlov.sergey.404@gmail.com
COMMENT=	Remote Python Call

LICENSE=	MIT

OPTIONS_DEFINE=	PLUMBUM
OPTIONS_DEFAULT=PLUMBUM

PLUMBUM_BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}plumbum>0:${PORTSDIR}/sysutils/py-plumbum
PLUMBUM_DESC=	 Required for features like rpyc_classic.py and zero deploy

USES=		python:-3.3
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
