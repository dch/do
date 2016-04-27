# $FreeBSD: head/security/py-plone.session/Makefile 371453 2014-10-24 16:50:42Z mva $

PORTNAME=	plone.session
PORTVERSION=	3.5.3
PORTREVISION=	1
CATEGORIES=	security python zope
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DIST_SUBDIR=	zope

MAINTAINER=	zope@FreeBSD.org
COMMENT=	Session based authentication for Zope

LICENSE=	BSD3CLAUSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}plone.protect>=0:${PORTSDIR}/security/py-plone.protect \
		${PYTHON_PKGNAMEPREFIX}zope.component>=0:${PORTSDIR}/devel/py-zope.component \
		${PYTHON_PKGNAMEPREFIX}zope.interface>=0:${PORTSDIR}/devel/py-zope.interface \
		${PYTHON_PKGNAMEPREFIX}Products.PluggableAuthService>=0:${PORTSDIR}/security/py-Products.PluggableAuthService

USES=		python zip
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
