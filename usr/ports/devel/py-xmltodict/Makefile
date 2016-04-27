# Created by: Johannes Meixner <xmj@chaot.net>
# $FreeBSD: head/devel/py-xmltodict/Makefile 391030 2015-07-01 05:01:30Z xmj $

PORTNAME=	xmltodict
PORTVERSION=	0.9.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	xmj@chaot.net
COMMENT=	XML parser that returns python dictionaries

LICENSE=	MIT

TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}nose:${PORTSDIR}/devel/py-nose

USES=		python
USE_PYTHON=	distutils autoplist

regression-test: build
	@cd ${WRKSRC} && nosetests

.include <bsd.port.mk>
