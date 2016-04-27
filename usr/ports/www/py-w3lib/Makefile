# $FreeBSD: head/www/py-w3lib/Makefile 394182 2015-08-13 18:44:51Z rm $

PORTNAME=	w3lib
PORTVERSION=	1.12.0
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	rm@FreeBSD.org
COMMENT=	Library of web-related functions

LICENSE=	BSD3CLAUSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}six>0:${PORTSDIR}/devel/py-six

NO_ARCH=	yes
USES=		python
USE_PYTHON=	autoplist concurrent distutils

.include <bsd.port.mk>
