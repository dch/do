# Created by: Johannes Jost Meixner <xmj@FreeBSD.org>
# $FreeBSD: head/graphics/py-pyganim/Makefile 391033 2015-07-01 06:07:29Z xmj $

PORTNAME=	pyganim
PORTVERSION=	0.9.0
CATEGORIES=	graphics python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	Pyganim-${PORTVERSION}

MAINTAINER=	xmj@chaot.net
COMMENT=	Sprite animation module for Pygame

LICENSE=	BSD2CLAUSE

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}game>0:${PORTSDIR}/devel/py-game
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		python zip
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
