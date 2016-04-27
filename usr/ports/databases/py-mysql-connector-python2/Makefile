# Created by: Muhammad Moinur Rahman <5u623l20@gmail.com>
# $FreeBSD: head/databases/py-mysql-connector-python2/Makefile 387461 2015-05-26 08:42:39Z bofh $

PORTNAME=		mysql-connector-python
PORTVERSION=		2.0.4
CATEGORIES=		databases python
MASTER_SITES=		MYSQL/Connector-Python
PKGNAMEPREFIX=		${PYTHON_PKGNAMEPREFIX}
PKGNAMESUFFIX=		2

MAINTAINER=		bofh@FreeBSD.org
COMMENT=		MySQL driver written in Python

LICENSE=		GPLv2

PORTSCOUT=		skipv:2.1.1,2.1.2 # BETA version
NO_ARCH=		yes
USES=			python
USE_PYTHON=		distutils autoplist

.include <bsd.port.mk>
