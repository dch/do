# $FreeBSD: head/devel/py-Products.GenericSetup/Makefile 371280 2014-10-20 16:04:12Z mva $

PORTNAME=	Products.GenericSetup
PORTVERSION=	1.7.4
PORTREVISION=	1
CATEGORIES=	devel python zope
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DIST_SUBDIR=	zope

MAINTAINER=	zope@FreeBSD.org
COMMENT=	Read Zope configuration state from profile dirs / tarballs

LICENSE=	ZPL21

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}eggtestinfo>0:${PORTSDIR}/devel/py-eggtestinfo
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}five.localsitemanager>=0:${PORTSDIR}/devel/py-five.localsitemanager \
		${PYTHON_PKGNAMEPREFIX}zope.formlib>=0:${PORTSDIR}/devel/py-zope.formlib

USE_PYTHON=	distutils autoplist
USES=		python:2 zope

.include <bsd.port.mk>
