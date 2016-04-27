# Created by: Douglas Thrift <douglas@douglasthrift.net>
# $FreeBSD: head/security/py-SecretStorage/Makefile 374458 2014-12-10 14:04:23Z feld $

PORTNAME=	SecretStorage
PORTVERSION=	1.1.0
CATEGORIES=	security python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	douglas@douglasthrift.net
COMMENT=	Store passwords using the SecretService DBus API

LICENSE=	BSD3CLAUSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}dbus>=0.84.0:${PORTSDIR}/devel/py-dbus

USES=		python
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
