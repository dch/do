# Created by: Yi-Jheng Lin <yzlin@cs.nctu.edu.tw>
# $FreeBSD: head/devel/py-hashring/Makefile 371280 2014-10-20 16:04:12Z mva $

PORTNAME=	hashring
PORTVERSION=	1.3.1
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	hash_ring-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Implementation of consistent hashing in Python

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}memcached>=0:${PORTSDIR}/databases/py-memcached

USES=		python
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
