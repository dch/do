# Created by: Alexey V. Degtyarev <alexey@renatasystems.org>
# $FreeBSD: head/devel/py-botocore/Makefile 378755 2015-02-09 21:03:28Z brd $

PORTNAME=	botocore
PORTVERSION=	0.86.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	alexey@renatasystems.org
COMMENT=	Low-level, core functionality of boto 3

LICENSE=	MIT

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}dateutil>=2.1:${PORTSDIR}/devel/py-dateutil \
		${PYTHON_PKGNAMEPREFIX}jmespath>=0.5.0:${PORTSDIR}/devel/py-jmespath

USES=		python
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
