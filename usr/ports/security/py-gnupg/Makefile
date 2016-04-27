# Created by: ijliao
# $FreeBSD: head/security/py-gnupg/Makefile 373787 2014-12-02 21:46:56Z cs $

PORTNAME=	gnupg
PORTVERSION=	1.4.0
CATEGORIES=	security python
MASTER_SITES=	http://www.c-s.li/ports/ \
		CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	cs@FreeBSD.org
COMMENT=	Python wrapper for GnuPG

LICENSE=	GPLv3

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}psutil>=0.5.1:${PORTSDIR}/sysutils/py-psutil

USES=		python
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
