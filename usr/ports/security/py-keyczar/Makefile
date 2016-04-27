# Created by: Douglas Thrift <douglas@douglasthrift.net>
# $FreeBSD: head/security/py-keyczar/Makefile 371453 2014-10-24 16:50:42Z mva $

PORTNAME=	keyczar
PORTVERSION=	0.71c
CATEGORIES=	security python
MASTER_SITES=	GOOGLE_CODE
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	python-${PORTNAME}-${PORTVERSION}

MAINTAINER=	douglas@douglasthrift.net
COMMENT=	Toolkit for safe and simple cryptography

LICENSE=	APACHE20

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pycrypto>=2.0:${PORTSDIR}/security/py-pycrypto

USES=		python
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
