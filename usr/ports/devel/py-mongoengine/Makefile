# Created by: Mirko Zinn <mail@derzinn.de>
# $FreeBSD: head/devel/py-mongoengine/Makefile 383535 2015-04-07 19:38:48Z antoine $

PORTNAME=	mongoengine
PORTVERSION=	0.8.7
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	wg@FreeBSD.org
COMMENT=	Object-Document-Mapper for working with MongoDB

LICENSE=	MIT

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pymongo>=2.5:${PORTSDIR}/databases/pymongo

USES=		python
USE_PYTHON=	autoplist distutils

# bson is provided by pymongo
post-patch:
	@${RM} -rf ${WRKSRC}/bson

.include <bsd.port.mk>
