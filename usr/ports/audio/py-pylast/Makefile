# Created by: Mark Felder <feld@FreeBSD.org>
# $FreeBSD: head/audio/py-pylast/Makefile 389838 2015-06-16 12:50:21Z feld $

PORTNAME=	pylast
PORTVERSION=	1.2.1
CATEGORIES=	audio python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	feld@FreeBSD.org
COMMENT=	Python interface to Last.fm and Libre.fm

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/COPYING

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}six>0:${PORTSDIR}/devel/py-six

USES=		python
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
