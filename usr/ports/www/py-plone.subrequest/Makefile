# $FreeBSD: head/www/py-plone.subrequest/Makefile 376109 2015-01-03 08:41:20Z mva $

PORTNAME=	plone.subrequest
PORTVERSION=	1.6.7
PORTREVISION=	1
CATEGORIES=	www python zope
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DIST_SUBDIR=	zope

MAINTAINER=	zope@FreeBSD.org
COMMENT=	Subrequests for Zope2

LICENSE=	GPLv2

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}five.globalrequest>=0:${PORTSDIR}/devel/py-five.globalrequest \
		${PYTHON_PKGNAMEPREFIX}zope.globalrequest>=0:${PORTSDIR}/devel/py-zope.globalrequest

USES=		python zip
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
