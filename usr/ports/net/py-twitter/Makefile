# Created by: ijliao
# $FreeBSD: head/net/py-twitter/Makefile 390906 2015-06-29 13:50:55Z sunpoet $

PORTNAME=	twitter
PORTVERSION=	2.0
PORTREVISION=	1
CATEGORIES=	net python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	python-${PORTNAME}-${PORTVERSION}

MAINTAINER=	python@FreeBSD.org
COMMENT=	Python wrapper around the Twitter API

LICENSE=	APACHE20

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}requests>=0:${PORTSDIR}/www/py-requests \
		${PYTHON_PKGNAMEPREFIX}requests-oauthlib>=0:${PORTSDIR}/www/py-requests-oauthlib \
		${PYTHON_PKGNAMEPREFIX}simplejson>=0:${PORTSDIR}/devel/py-simplejson

USES=		python:2
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
