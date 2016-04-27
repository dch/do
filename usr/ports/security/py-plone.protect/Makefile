# $FreeBSD: head/security/py-plone.protect/Makefile 371453 2014-10-24 16:50:42Z mva $

PORTNAME=	plone.protect
PORTVERSION=	2.0.2
PORTREVISION=	1
CATEGORIES=	security python zope
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DIST_SUBDIR=	zope

MAINTAINER=	zope@FreeBSD.org
COMMENT=	Security for browser forms

LICENSE=	BSD3CLAUSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}plone.keyring>1.0:${PORTSDIR}/security/py-plone.keyring \
		${PYTHON_PKGNAMEPREFIX}zope.component>=0:${PORTSDIR}/devel/py-zope.component \
		${PYTHON_PKGNAMEPREFIX}zope.interface>=0:${PORTSDIR}/devel/py-zope.interface

USES=		python zip
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
