# Created by: Kevin Golding <ports@caomhin.org>
# $FreeBSD: head/www/py-django-registration/Makefile 376109 2015-01-03 08:41:20Z mva $

PORTNAME=	django-registration
PORTVERSION=	1.0
PORTREVISION=	1
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	ports@caomhin.org
COMMENT=	User-registration application for Django

LICENSE=	BSD3CLAUSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}django>=1.4:${PORTSDIR}/www/py-django

USES=		gettext python
USE_PYTHON=	distutils autoplist

CONFLICTS_INSTALL=	pootle-*

.include <bsd.port.mk>
