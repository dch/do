# $FreeBSD: head/devel/py-ipdb/Makefile 371280 2014-10-20 16:04:12Z mva $

PORTNAME=	ipdb
PORTVERSION=	0.8
PORTREVISION=	2
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	milki@FreeBSD.org
COMMENT=	IPython-enabled pdb

LICENSE=	GPLv2

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}ipython>=0.10:${PORTSDIR}/devel/ipython

USES=		python zip
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
