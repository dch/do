# Created by: Dmitry Sivachenko <demon@FreeBSD.org>
# $FreeBSD: head/devel/py-user_agents/Makefile 376596 2015-01-09 11:54:08Z demon $

PORTNAME=	user_agents
PORTVERSION=	0.3.1
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	${PORTNAME:S/_/-/}-${PORTVERSION}

MAINTAINER=	demon@FreeBSD.org
COMMENT=	Python library to identify devices using User-Agent string

RUN_DEPENDS=	${PYTHON_SITELIBDIR}/ua_parser/__init__.py:${PORTSDIR}/devel/py-ua_parser

USES=		python
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
