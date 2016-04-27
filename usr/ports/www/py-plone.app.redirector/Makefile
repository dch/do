# $FreeBSD: head/www/py-plone.app.redirector/Makefile 376109 2015-01-03 08:41:20Z mva $

PORTNAME=	plone.app.redirector
PORTVERSION=	1.2
PORTREVISION=	1
CATEGORIES=	www python zope
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DIST_SUBDIR=	zope

MAINTAINER=	zope@FreeBSD.org
COMMENT=	Redirection tool

LICENSE=	GPLv2

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}plone.memoize>=0:${PORTSDIR}/www/py-plone.memoize

USES=		python zip
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
