# $FreeBSD: head/www/py-plone.app.jquery/Makefile 376109 2015-01-03 08:41:20Z mva $

PORTNAME=	plone.app.jquery
PORTVERSION=	1.7.2
PORTREVISION=	1
CATEGORIES=	www python zope
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DIST_SUBDIR=	zope

MAINTAINER=	zope@FreeBSD.org
COMMENT=	jQuery integration for Plone

LICENSE=	GPLv2

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}Products.CMFCore>=0:${PORTSDIR}/devel/py-Products.CMFCore \
		${PYTHON_PKGNAMEPREFIX}Products.GenericSetup>=0:${PORTSDIR}/devel/py-Products.GenericSetup

USES=		python
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
