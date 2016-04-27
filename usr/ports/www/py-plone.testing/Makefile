# $FreeBSD: head/www/py-plone.testing/Makefile 376109 2015-01-03 08:41:20Z mva $

PORTNAME=	plone.testing
PORTVERSION=	4.0.8
PORTREVISION=	1
CATEGORIES=	www python zope
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DIST_SUBDIR=	zope

MAINTAINER=	zope@FreeBSD.org
COMMENT=	Testing infrastructure for Zope and Plone projects

LICENSE=	BSD3CLAUSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}zope.testing>=0:${PORTSDIR}/devel/py-zope.testing \
		${PYTHON_PKGNAMEPREFIX}unittest2>=0:${PORTSDIR}/devel/py-unittest2

USES=		python zip
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
