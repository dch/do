# Created by: Kevin Golding <ports@caomhin.org>
# $FreeBSD: head/www/py-django-signals-ahoy/Makefile 386097 2015-05-11 18:34:57Z mat $

PORTNAME=	django-signals-ahoy
DISTVERSION=	0.1-0
PORTREVISION=	2
CATEGORIES=	www python
MASTER_SITES=	http://cdn.bitbucket.org/bkroeze/django-signals-ahoy/downloads/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	ports@caomhin.org
COMMENT=	Extended set of signals for use by Django apps

RUN_DEPENDS=	${PYTHON_SITELIBDIR}/django/bin/django-admin.py:${PORTSDIR}/www/py-django

USES=		python
USE_PYTHON=	distutils autoplist

post-extract:
	${RM} -r ${WRKSRC}/tests

.include <bsd.port.mk>
