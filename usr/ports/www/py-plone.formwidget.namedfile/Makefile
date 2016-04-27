# $FreeBSD: head/www/py-plone.formwidget.namedfile/Makefile 376109 2015-01-03 08:41:20Z mva $

PORTNAME=	plone.formwidget.namedfile
PORTVERSION=	1.0.7
PORTREVISION=	1
CATEGORIES=	www python zope
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DIST_SUBDIR=	zope

MAINTAINER=	zope@FreeBSD.org
COMMENT=	Image widget for z3c.form and Plone

LICENSE=	GPLv2

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}plone.namedfile>0:${PORTSDIR}/www/py-plone.namedfile \
		${PYTHON_PKGNAMEPREFIX}z3c.form>0:${PORTSDIR}/devel/py-z3c.form \
		${PYTHON_PKGNAMEPREFIX}plone.z3cform>0:${PORTSDIR}/www/py-plone.z3cform

USES=		python zip
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
