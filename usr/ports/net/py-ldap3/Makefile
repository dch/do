# $FreeBSD: head/net/py-ldap3/Makefile 394183 2015-08-13 18:49:02Z rm $

PORTNAME=	ldap3
PORTVERSION=	0.9.8.7
CATEGORIES=	net python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	rm@FreeBSD.org
COMMENT=	Strictly RFC 4511 conforming LDAP V3 pure Python client

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING.txt

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}asn1>0:${PORTSDIR}/devel/py-asn1

NO_ARCH=	yes
USES=		python
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
