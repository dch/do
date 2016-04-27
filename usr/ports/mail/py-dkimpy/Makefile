# Created by: Kevin Golding <ports@caomhin.org>
# $FreeBSD: head/mail/py-dkimpy/Makefile 385586 2015-05-07 00:52:23Z wen $

PORTNAME=	dkimpy
PORTVERSION=	0.5.4
CATEGORIES=	mail python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	ports@caomhin.org
COMMENT=	Python library for DKIM email signing and verification

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}dns>=0:${PORTSDIR}/dns/py-dns

USES=		python:2
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
