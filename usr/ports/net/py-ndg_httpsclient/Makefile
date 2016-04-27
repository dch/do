# Created by: Olivier Duchateau
# $FreeBSD: head/net/py-ndg_httpsclient/Makefile 388859 2015-06-08 19:37:12Z sunpoet $

PORTNAME=	ndg_httpsclient
PORTVERSION=	0.4.0
CATEGORIES=	net python
MASTER_SITES=	CHEESESHOP/source/n/ndg-httpsclient
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Enhance HTTPS support for httplib and urllib2

LICENSE=	BSD3CLAUSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}asn1>=0.1.4:${PORTSDIR}/devel/py-asn1 \
		${PYTHON_PKGNAMEPREFIX}openssl>=0.13:${PORTSDIR}/security/py-openssl

USE_PYTHON=	autoplist distutils
USES=		python

.include <bsd.port.mk>
