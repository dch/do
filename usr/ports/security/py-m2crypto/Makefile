# Created by: Peter Haight <peterh@sapros.com>
# $FreeBSD: head/security/py-m2crypto/Makefile 364929 2014-08-15 03:43:54Z sunpoet $

PORTNAME=	m2crypto
PORTVERSION=	0.22.3
CATEGORIES=	security python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	M2Crypto-${PORTVERSION}

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Crypto and SSL toolkit for Python

LICENSE=	MIT

BUILD_DEPENDS=	${LOCALBASE}/bin/swig:${PORTSDIR}/devel/swig13

PYDISTUTILS_BUILDARGS=	build_ext --openssl="${OPENSSLBASE}"
USE_OPENSSL=	yes
USE_PYTHON=	autoplist distutils
USES=		python:2

.include <bsd.port.mk>
